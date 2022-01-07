; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_dpcsup.c_aac_command_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_dpcsup.c_aac_command_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_queue = type { i32, i32, i32, %struct.aac_dev* }
%struct.aac_dev = type { i64, %struct.hw_fib* }
%struct.hw_fib = type { i64 }
%struct.aac_entry = type { i32 }
%struct.fib = type { i32, i32, %struct.aac_dev*, i64, %struct.hw_fib*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FSAFS_NTC_FIB_CONTEXT = common dso_local global i32 0, align 4
@HostNormCmdQueue = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_command_normal(%struct.aac_queue* %0) #0 {
  %2 = alloca %struct.aac_queue*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fib, align 8
  %7 = alloca %struct.hw_fib*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fib*, align 8
  store %struct.aac_queue* %0, %struct.aac_queue** %2, align 8
  %10 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %11 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %10, i32 0, i32 3
  %12 = load %struct.aac_dev*, %struct.aac_dev** %11, align 8
  store %struct.aac_dev* %12, %struct.aac_dev** %3, align 8
  %13 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %14 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %110, %1
  %19 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %20 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %21 = call i64 @aac_consumer_get(%struct.aac_dev* %19, %struct.aac_queue* %20, %struct.aac_entry** %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %111

23:                                               ; preds = %18
  store %struct.fib* %6, %struct.fib** %9, align 8
  %24 = load %struct.aac_entry*, %struct.aac_entry** %4, align 8
  %25 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %31 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %30, i32 0, i32 1
  %32 = load %struct.hw_fib*, %struct.hw_fib** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %32, i64 %33
  store %struct.hw_fib* %34, %struct.hw_fib** %7, align 8
  %35 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %36 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.fib* @kmalloc(i32 40, i32 %40)
  store %struct.fib* %41, %struct.fib** %9, align 8
  %42 = icmp eq %struct.fib* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.fib* %6, %struct.fib** %9, align 8
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.fib*, %struct.fib** %9, align 8
  %47 = call i32 @memset(%struct.fib* %46, i32 0, i32 40)
  %48 = load %struct.fib*, %struct.fib** %9, align 8
  %49 = getelementptr inbounds %struct.fib, %struct.fib* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i32, i32* @FSAFS_NTC_FIB_CONTEXT, align 4
  %52 = load %struct.fib*, %struct.fib** %9, align 8
  %53 = getelementptr inbounds %struct.fib, %struct.fib* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fib*, %struct.fib** %9, align 8
  %55 = getelementptr inbounds %struct.fib, %struct.fib* %54, i32 0, i32 0
  store i32 40, i32* %55, align 8
  %56 = load %struct.hw_fib*, %struct.hw_fib** %7, align 8
  %57 = load %struct.fib*, %struct.fib** %9, align 8
  %58 = getelementptr inbounds %struct.fib, %struct.fib* %57, i32 0, i32 4
  store %struct.hw_fib* %56, %struct.hw_fib** %58, align 8
  %59 = load %struct.hw_fib*, %struct.hw_fib** %7, align 8
  %60 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.fib*, %struct.fib** %9, align 8
  %63 = getelementptr inbounds %struct.fib, %struct.fib* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %65 = load %struct.fib*, %struct.fib** %9, align 8
  %66 = getelementptr inbounds %struct.fib, %struct.fib* %65, i32 0, i32 2
  store %struct.aac_dev* %64, %struct.aac_dev** %66, align 8
  %67 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %68 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %45
  %72 = load %struct.fib*, %struct.fib** %9, align 8
  %73 = icmp ne %struct.fib* %72, %6
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.fib*, %struct.fib** %9, align 8
  %76 = getelementptr inbounds %struct.fib, %struct.fib* %75, i32 0, i32 1
  %77 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %78 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %77, i32 0, i32 2
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %81 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %82 = load i32, i32* @HostNormCmdQueue, align 4
  %83 = call i32 @aac_consumer_free(%struct.aac_dev* %80, %struct.aac_queue* %81, i32 %82)
  %84 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %85 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %84, i32 0, i32 1
  %86 = call i32 @wake_up_interruptible(i32* %85)
  br label %110

87:                                               ; preds = %71, %45
  %88 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %89 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %90 = load i32, i32* @HostNormCmdQueue, align 4
  %91 = call i32 @aac_consumer_free(%struct.aac_dev* %88, %struct.aac_queue* %89, i32 %90)
  %92 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %93 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load i32, i32* @ST_OK, align 4
  %98 = call i32 @cpu_to_le32(i32 %97)
  %99 = load %struct.hw_fib*, %struct.hw_fib** %7, align 8
  %100 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  store i32 %98, i32* %102, align 4
  %103 = load %struct.fib*, %struct.fib** %9, align 8
  %104 = call i32 @aac_fib_adapter_complete(%struct.fib* %103, i32 8)
  %105 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %106 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @spin_lock_irqsave(i32 %107, i64 %108)
  br label %110

110:                                              ; preds = %87, %74
  br label %18

111:                                              ; preds = %18
  %112 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %113 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32 %114, i64 %115)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @aac_consumer_get(%struct.aac_dev*, %struct.aac_queue*, %struct.aac_entry**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.fib* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.fib*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @aac_consumer_free(%struct.aac_dev*, %struct.aac_queue*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @aac_fib_adapter_complete(%struct.fib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
