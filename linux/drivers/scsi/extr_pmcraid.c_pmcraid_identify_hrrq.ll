; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_identify_hrrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_identify_hrrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i32, %struct.TYPE_2__*, %struct.pmcraid_instance* }
%struct.TYPE_2__ = type { %struct.pmcraid_ioarcb }
%struct.pmcraid_ioarcb = type { i32, i32*, i32, i32, i32 }
%struct.pmcraid_instance = type { i32, i32* }

@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@REQ_TYPE_IOACMD = common dso_local global i32 0, align 4
@PMCRAID_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@PMCRAID_IDENTIFY_HRRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"HRRQ_IDENTIFY with hrrq:ioarcb:index => %llx:%llx:%x\0A\00", align 1
@PMCRAID_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@pmcraid_timeout_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_identify_hrrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_identify_hrrq(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca %struct.pmcraid_ioarcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.pmcraid_cmd*)*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %9 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %9, i32 0, i32 2
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %10, align 8
  store %struct.pmcraid_instance* %11, %struct.pmcraid_instance** %3, align 8
  %12 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.pmcraid_ioarcb* %15, %struct.pmcraid_ioarcb** %4, align 8
  %16 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %20 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_be64(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @cpu_to_be32(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %33 = call i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd* %32)
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %37 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %42 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store void (%struct.pmcraid_cmd*)* @pmcraid_identify_hrrq, void (%struct.pmcraid_cmd*)** %8, align 8
  br label %49

46:                                               ; preds = %1
  %47 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %48 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  store void (%struct.pmcraid_cmd*)* @pmcraid_get_fwversion, void (%struct.pmcraid_cmd*)** %8, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i32, i32* @REQ_TYPE_IOACMD, align 4
  %51 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %52 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @PMCRAID_IOA_RES_HANDLE, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %56 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %59 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @PMCRAID_IDENTIFY_HRRQ, align 4
  %61 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %62 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %67 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %72 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @pmcraid_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i32 %74)
  %76 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %77 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = call i32 @memcpy(i32* %79, i32* %6, i32 4)
  %81 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %4, align 8
  %82 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = call i32 @memcpy(i32* %84, i32* %7, i32 4)
  %86 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %87 = load void (%struct.pmcraid_cmd*)*, void (%struct.pmcraid_cmd*)** %8, align 8
  %88 = load i32, i32* @PMCRAID_INTERNAL_TIMEOUT, align 4
  %89 = load i32, i32* @pmcraid_timeout_handler, align 4
  %90 = call i32 @pmcraid_send_cmd(%struct.pmcraid_cmd* %86, void (%struct.pmcraid_cmd*)* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd*) #1

declare dso_local void @pmcraid_get_fwversion(%struct.pmcraid_cmd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pmcraid_info(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pmcraid_send_cmd(%struct.pmcraid_cmd*, void (%struct.pmcraid_cmd*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
