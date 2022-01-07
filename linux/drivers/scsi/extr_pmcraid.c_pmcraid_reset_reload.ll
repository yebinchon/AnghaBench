; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_reset_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_reset_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i64, i32, i32, %struct.TYPE_3__*, i64, i32, %struct.pmcraid_cmd*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pmcraid_cmd = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"reset_reload: reset is already in progress\0A\00", align 1
@IOA_STATE_DEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"reset_reload: IOA is dead\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"reset_reload: proceeding with reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"no free cmnd for reset_reload\0A\00", align 1
@SHUTDOWN_NORMAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"reset_reload: initiating reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"reset_reload: waiting for reset to complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"reset_reload: reset is complete !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*, i64, i64)* @pmcraid_reset_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_reset_reload(%struct.pmcraid_instance* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmcraid_instance*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pmcraid_cmd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pmcraid_cmd* null, %struct.pmcraid_cmd** %8, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %19 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %3
  %23 = call i32 @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  %31 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %32 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %33, i32 %39)
  %41 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %42 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32 %45, i64 %46)
  %48 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %49 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IOA_STATE_DEAD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %22
  %54 = call i32 @pmcraid_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %124

55:                                               ; preds = %22
  %56 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %57 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %124

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %3
  %64 = call i32 @pmcraid_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %66 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @scsi_block_requests(%struct.TYPE_3__* %67)
  %69 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %70 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %69)
  store %struct.pmcraid_cmd* %70, %struct.pmcraid_cmd** %8, align 8
  %71 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %8, align 8
  %72 = icmp eq %struct.pmcraid_cmd* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 @pmcraid_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %124

75:                                               ; preds = %63
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @SHUTDOWN_NORMAL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %81 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %85 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %84, i32 0, i32 7
  store i64 %83, i64* %85, align 8
  %86 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %8, align 8
  %87 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %88 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %87, i32 0, i32 6
  store %struct.pmcraid_cmd* %86, %struct.pmcraid_cmd** %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %91 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = call i32 @pmcraid_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %8, align 8
  %94 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %93)
  %95 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %96 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32 %99, i64 %100)
  %102 = call i32 @pmcraid_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %104 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %107 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @wait_event(i32 %105, i32 %111)
  %113 = call i32 @pmcraid_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %115 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = call i32 @scsi_unblock_requests(%struct.TYPE_3__* %116)
  %118 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %119 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %4, align 4
  br label %133

124:                                              ; preds = %73, %61, %53
  %125 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %126 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %125, i32 0, i32 3
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32 %129, i64 %130)
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %124, %82
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @scsi_block_requests(%struct.TYPE_3__*) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
