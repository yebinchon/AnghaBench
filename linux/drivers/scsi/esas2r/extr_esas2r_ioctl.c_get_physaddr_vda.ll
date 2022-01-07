; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_get_physaddr_vda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_get_physaddr_vda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_sg_context = type { i64, i64 }
%struct.esas2r_adapter = type { i64, i64 }

@VDA_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.esas2r_sg_context*, i64*)* @get_physaddr_vda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_physaddr_vda(%struct.esas2r_sg_context* %0, i64* %1) #0 {
  %3 = alloca %struct.esas2r_sg_context*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.esas2r_sg_context* %0, %struct.esas2r_sg_context** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %10, %struct.esas2r_adapter** %5, align 8
  %11 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %12 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = ptrtoint i32* %14 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i64*, i64** %4, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
