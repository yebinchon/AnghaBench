; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_p2pmem_ns_add_p2p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_p2pmem_ns_add_p2p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ctrl = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.nvmet_ns = type { i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"no peer-to-peer memory is available that's supported by %s and %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"using p2pmem on %s for nsid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_ctrl*, %struct.nvmet_ns*)* @nvmet_p2pmem_ns_add_p2p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_p2pmem_ns_add_p2p(%struct.nvmet_ctrl* %0, %struct.nvmet_ns* %1) #0 {
  %3 = alloca %struct.nvmet_ctrl*, align 8
  %4 = alloca %struct.nvmet_ns*, align 8
  %5 = alloca [2 x %struct.device*], align 16
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %3, align 8
  store %struct.nvmet_ns* %1, %struct.nvmet_ns** %4, align 8
  %8 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %83

18:                                               ; preds = %12
  %19 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %20 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %25 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %27, i32 0, i32 1
  %29 = load %struct.device*, %struct.device** %28, align 8
  %30 = call i32 @pci_p2pdma_distance(i64 %26, %struct.device* %29, i32 1)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %83

34:                                               ; preds = %23
  %35 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %36 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.pci_dev* @pci_dev_get(i64 %37)
  store %struct.pci_dev* %38, %struct.pci_dev** %6, align 8
  br label %63

39:                                               ; preds = %18
  %40 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %40, i32 0, i32 1
  %42 = load %struct.device*, %struct.device** %41, align 8
  %43 = getelementptr inbounds [2 x %struct.device*], [2 x %struct.device*]* %5, i64 0, i64 0
  store %struct.device* %42, %struct.device** %43, align 16
  %44 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %45 = call %struct.device* @nvmet_ns_dev(%struct.nvmet_ns* %44)
  %46 = getelementptr inbounds [2 x %struct.device*], [2 x %struct.device*]* %5, i64 0, i64 1
  store %struct.device* %45, %struct.device** %46, align 8
  %47 = getelementptr inbounds [2 x %struct.device*], [2 x %struct.device*]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [2 x %struct.device*], [2 x %struct.device*]* %5, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(%struct.device** %48)
  %50 = call %struct.pci_dev* @pci_p2pmem_find_many(%struct.device** %47, i32 %49)
  store %struct.pci_dev* %50, %struct.pci_dev** %6, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = icmp ne %struct.pci_dev* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %39
  %54 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %54, i32 0, i32 1
  %56 = load %struct.device*, %struct.device** %55, align 8
  %57 = call i32 @dev_name(%struct.device* %56)
  %58 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %59 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  br label %83

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %64, i32 0, i32 0
  %66 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %67 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = call i32 @radix_tree_insert(i32* %65, i32 %68, %struct.pci_dev* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = call i32 @pci_dev_put(%struct.pci_dev* %74)
  br label %76

76:                                               ; preds = %73, %63
  %77 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %78 = call i32 @pci_name(%struct.pci_dev* %77)
  %79 = load %struct.nvmet_ns*, %struct.nvmet_ns** %4, align 8
  %80 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %53, %33, %17
  ret void
}

declare dso_local i32 @pci_p2pdma_distance(i64, %struct.device*, i32) #1

declare dso_local %struct.pci_dev* @pci_dev_get(i64) #1

declare dso_local %struct.device* @nvmet_ns_dev(%struct.nvmet_ns*) #1

declare dso_local %struct.pci_dev* @pci_p2pmem_find_many(%struct.device**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.device**) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
