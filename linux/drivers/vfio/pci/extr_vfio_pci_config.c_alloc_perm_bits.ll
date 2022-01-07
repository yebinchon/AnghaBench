; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_alloc_perm_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_alloc_perm_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perm_bits = type { i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vfio_default_config_read = common dso_local global i32 0, align 4
@vfio_default_config_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perm_bits*, i32)* @alloc_perm_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_perm_bits(%struct.perm_bits* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perm_bits*, align 8
  %5 = alloca i32, align 4
  store %struct.perm_bits* %0, %struct.perm_bits** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @round_up(i32 %6, i32 4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 %8, i32 %9)
  %11 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %12 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 %13, i32 %14)
  %16 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %17 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %19 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %24 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %29 = call i32 @free_perm_bits(%struct.perm_bits* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @vfio_default_config_read, align 4
  %34 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %35 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @vfio_default_config_write, align 4
  %37 = load %struct.perm_bits*, %struct.perm_bits** %4, align 8
  %38 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @free_perm_bits(%struct.perm_bits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
