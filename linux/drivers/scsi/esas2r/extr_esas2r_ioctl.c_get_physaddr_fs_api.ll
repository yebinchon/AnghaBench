; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_get_physaddr_fs_api.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_get_physaddr_fs_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_sg_context = type { i64, i64 }
%struct.esas2r_adapter = type { i32, i32, i64 }
%struct.esas2r_ioctl_fs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_sg_context*, i32*)* @get_physaddr_fs_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_physaddr_fs_api(%struct.esas2r_sg_context* %0, i32* %1) #0 {
  %3 = alloca %struct.esas2r_sg_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca %struct.esas2r_ioctl_fs*, align 8
  %7 = alloca i32, align 4
  store %struct.esas2r_sg_context* %0, %struct.esas2r_sg_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %9 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %11, %struct.esas2r_adapter** %5, align 8
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.esas2r_ioctl_fs*
  store %struct.esas2r_ioctl_fs* %15, %struct.esas2r_ioctl_fs** %6, align 8
  %16 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %17 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %6, align 8
  %21 = bitcast %struct.esas2r_ioctl_fs* %20 to i32*
  %22 = ptrtoint i32* %19 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
