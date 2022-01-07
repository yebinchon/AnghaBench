; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_frwr_is_supported.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_frwr_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device_attr = type { i32, i64 }

@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device_attr*)* @frwr_is_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frwr_is_supported(%struct.ib_device_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device_attr*, align 8
  store %struct.ib_device_attr* %0, %struct.ib_device_attr** %3, align 8
  %4 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %5 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %13 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
