; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_fileops.c_kpc_dma_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_fileops.c_kpc_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dev_private_data* }
%struct.dev_private_data = type { %struct.kpc_dma_device* }
%struct.kpc_dma_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kpc_dma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpc_dma_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dev_private_data*, align 8
  %7 = alloca %struct.kpc_dma_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call %struct.kpc_dma_device* @kpc_dma_lookup_device(i32 %9)
  store %struct.kpc_dma_device* %10, %struct.kpc_dma_device** %7, align 8
  %11 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %12 = icmp ne %struct.kpc_dma_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %18 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %17, i32 0, i32 0
  %19 = call i32 @atomic_dec_and_test(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %23 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.dev_private_data* @kzalloc(i32 8, i32 %28)
  store %struct.dev_private_data* %29, %struct.dev_private_data** %6, align 8
  %30 = load %struct.dev_private_data*, %struct.dev_private_data** %6, align 8
  %31 = icmp ne %struct.dev_private_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %37 = load %struct.dev_private_data*, %struct.dev_private_data** %6, align 8
  %38 = getelementptr inbounds %struct.dev_private_data, %struct.dev_private_data* %37, i32 0, i32 0
  store %struct.kpc_dma_device* %36, %struct.kpc_dma_device** %38, align 8
  %39 = load %struct.dev_private_data*, %struct.dev_private_data** %6, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.dev_private_data* %39, %struct.dev_private_data** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %32, %21, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.kpc_dma_device* @kpc_dma_lookup_device(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.dev_private_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
