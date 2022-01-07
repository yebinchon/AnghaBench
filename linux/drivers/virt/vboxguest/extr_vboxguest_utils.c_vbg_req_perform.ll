; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_req_perform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_req_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i64 }
%struct.vmmdev_request_header = type { i32 }

@VMMDEV_PORT_OFF_REQUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbg_req_perform(%struct.vbg_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.vbg_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.vbg_dev* %0, %struct.vbg_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @virt_to_phys(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VMMDEV_PORT_OFF_REQUEST, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outl(i64 %8, i64 %13)
  %15 = call i32 (...) @mb()
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.vmmdev_request_header*
  %18 = getelementptr inbounds %struct.vmmdev_request_header, %struct.vmmdev_request_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
