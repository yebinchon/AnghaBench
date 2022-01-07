; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_check_ctrl_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_check_ctrl_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NVME_CC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"got cmd %d while CC.EN == 0 on qid = %d\0A\00", align 1
@NVME_SC_CMD_SEQ_ERROR = common dso_local global i32 0, align 4
@NVME_SC_DNR = common dso_local global i32 0, align 4
@NVME_CSTS_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"got cmd %d while CSTS.RDY == 0 on qid = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_check_ctrl_status(%struct.nvmet_req* %0, %struct.nvme_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvmet_req*, align 8
  %5 = alloca %struct.nvme_command*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %4, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %5, align 8
  %6 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %7 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NVME_CC_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %26 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load i32, i32* @NVME_SC_CMD_SEQ_ERROR, align 4
  %32 = load i32, i32* @NVME_SC_DNR, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %2
  %35 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %36 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NVME_CSTS_RDY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %34
  %50 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %51 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %55 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32, i32* @NVME_SC_CMD_SEQ_ERROR, align 4
  %61 = load i32, i32* @NVME_SC_DNR, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %49, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
