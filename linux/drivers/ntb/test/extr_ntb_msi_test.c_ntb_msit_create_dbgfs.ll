; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_create_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_create_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ntb_msit_ctx = type { %struct.TYPE_4__*, %struct.dentry*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.ntb_msit_ctx* }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ntb_msit_dbgfs_topdir = common dso_local global %struct.dentry* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@ntb_msit_local_port_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"peer%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@ntb_msit_trigger_fops = common dso_local global i32 0, align 4
@ntb_msit_port_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@ntb_msit_count_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@ntb_msit_ready_fops = common dso_local global i32 0, align 4
@num_irqs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"irq%d_occurrences\00", align 1
@ntb_msit_occurrences_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_msit_ctx*)* @ntb_msit_create_dbgfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msit_create_dbgfs(%struct.ntb_msit_ctx* %0) #0 {
  %2 = alloca %struct.ntb_msit_ctx*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  store %struct.ntb_msit_ctx* %0, %struct.ntb_msit_ctx** %2, align 8
  %7 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i8* @pci_name(%struct.pci_dev* %12)
  %14 = load %struct.dentry*, %struct.dentry** @ntb_msit_dbgfs_topdir, align 8
  %15 = call i8* @debugfs_create_dir(i8* %13, %struct.dentry* %14)
  %16 = bitcast i8* %15 to %struct.dentry*
  %17 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %17, i32 0, i32 1
  store %struct.dentry* %16, %struct.dentry** %18, align 8
  %19 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %19, i32 0, i32 1
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  %22 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %21, %struct.ntb_msit_ctx* %22, i32* @ntb_msit_local_port_fops)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %97, %1
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @ntb_peer_port_count(%struct.TYPE_3__* %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 8
  %40 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %41 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store %struct.ntb_msit_ctx* %40, %struct.ntb_msit_ctx** %47, align 8
  %48 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @init_completion(i32* %54)
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @snprintf(i8* %56, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %60 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %60, i32 0, i32 1
  %62 = load %struct.dentry*, %struct.dentry** %61, align 8
  %63 = call i8* @debugfs_create_dir(i8* %59, %struct.dentry* %62)
  %64 = bitcast i8* %63 to %struct.dentry*
  store %struct.dentry* %64, %struct.dentry** %6, align 8
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 128, %struct.dentry* %65, %struct.TYPE_4__* %71, i32* @ntb_msit_trigger_fops)
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %75 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %73, %struct.TYPE_4__* %79, i32* @ntb_msit_port_fops)
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %81, %struct.TYPE_4__* %87, i32* @ntb_msit_count_fops)
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %89, %struct.TYPE_4__* %95, i32* @ntb_msit_ready_fops)
  br label %97

97:                                               ; preds = %31
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %24

100:                                              ; preds = %24
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %120, %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @num_irqs, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @snprintf(i8* %106, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %110 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %111 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %110, i32 0, i32 1
  %112 = load %struct.dentry*, %struct.dentry** %111, align 8
  %113 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %2, align 8
  %114 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = call i32 @debugfs_create_file_unsafe(i8* %109, i32 256, %struct.dentry* %112, %struct.TYPE_4__* %118, i32* @ntb_msit_occurrences_fops)
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %101

123:                                              ; preds = %101
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ntb_msit_ctx*, i32*) #1

declare dso_local i32 @ntb_peer_port_count(%struct.TYPE_3__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_file_unsafe(i8*, i32, %struct.dentry*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
