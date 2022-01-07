; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_show_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_show_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.se_tmr_req*, i32*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*)* }
%struct.se_tmr_req = type { i32, i32 }

@SCF_SCSI_TMR_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"%scmd %#02x:%#02x with tag %#llx dir %s i_state %d t_state %s len %d refcnt %d transport_state %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"%stmf %s with tag %#llx ref_task_tag %#llx i_state %d t_state %s refcnt %d transport_state %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_show_cmd(i8* %0, %struct.se_cmd* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.se_tmr_req*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.se_cmd* %1, %struct.se_cmd** %4, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @target_ts_to_str(i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 7
  %17 = load %struct.se_tmr_req*, %struct.se_tmr_req** %16, align 8
  store %struct.se_tmr_req* %17, %struct.se_tmr_req** %7, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @data_dir_name(i32 %37)
  %39 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %42, align 8
  %44 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %45 = call i32 %43(%struct.se_cmd* %44)
  %46 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cmd_state_name(i32 %48)
  %50 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 1
  %57 = call i32 @kref_read(i32* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28, i32 %31, i32 %34, i32 %38, i32 %45, i32 %49, i8* %54, i32 %57, i8* %58)
  br label %88

60:                                               ; preds = %2
  %61 = load i8*, i8** %3, align 8
  %62 = load %struct.se_tmr_req*, %struct.se_tmr_req** %7, align 8
  %63 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @target_tmf_name(i32 %64)
  %66 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.se_tmr_req*, %struct.se_tmr_req** %7, align 8
  %70 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %75, align 8
  %77 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %78 = call i32 %76(%struct.se_cmd* %77)
  %79 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @cmd_state_name(i32 %81)
  %83 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 1
  %85 = call i32 @kref_read(i32* %84)
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %65, i32 %68, i32 %71, i32 %78, i32 %82, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %60, %24
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @kfree(i8* %89)
  ret void
}

declare dso_local i8* @target_ts_to_str(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @data_dir_name(i32) #1

declare dso_local i32 @cmd_state_name(i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @target_tmf_name(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
