; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_internal_reset_defer_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_internal_reset_defer_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i32, %struct.TYPE_2__*, %struct.megasas_cmd** }
%struct.TYPE_2__ = type { i32 }
%struct.megasas_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"moving cmd[%d]:%p:%d:%pon the defer queue as internal\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"ERROR while moving this cmd:%p, %d %p, it wasdiscovered on some list?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_internal_reset_defer_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_internal_reset_defer_cmds(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.megasas_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %80, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %15
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 4
  %22 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %22, i64 %24
  %26 = load %struct.megasas_cmd*, %struct.megasas_cmd** %25, align 8
  store %struct.megasas_cmd* %26, %struct.megasas_cmd** %3, align 8
  %27 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %31, %19
  %37 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %38 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = inttoptr i64 %41 to %struct.megasas_cmd*
  %43 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %44 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %48 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, %struct.megasas_cmd*, ...) @dev_notice(i32* %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.megasas_cmd* %42, %struct.megasas_cmd* %43, i32 %46, i32 %49)
  %51 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %52 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %51, i32 0, i32 1
  %53 = call i32 @list_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %36
  %56 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %57 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %61 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, %struct.megasas_cmd*, ...) @dev_notice(i32* %59, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.megasas_cmd* %60, i32 %63, i32 %66)
  %68 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %69 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %68, i32 0, i32 1
  %70 = call i32 @list_del_init(i32* %69)
  br label %71

71:                                               ; preds = %55, %36
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %6, align 8
  %74 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %75 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %74, i32 0, i32 1
  %76 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %77 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %76, i32 0, i32 2
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %71, %31
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %15

83:                                               ; preds = %15
  %84 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %85 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %84, i32 0, i32 1
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_notice(i32*, i8*, %struct.megasas_cmd*, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
