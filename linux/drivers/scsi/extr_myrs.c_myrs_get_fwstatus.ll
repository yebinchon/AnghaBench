; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_fwstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_fwstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { %struct.TYPE_10__*, i32, %struct.myrs_cmdblk }
%struct.TYPE_10__ = type { i32 }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %union.myrs_sgl, i32, %struct.TYPE_6__, i32, i32 }
%union.myrs_sgl = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_MCMD_TAG = common dso_local global i32 0, align 4
@MYRS_IOCTL_GET_HEALTH_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending GetHealthStatus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*)* @myrs_get_fwstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_get_fwstatus(%struct.myrs_hba* %0) #0 {
  %2 = alloca %struct.myrs_hba*, align 8
  %3 = alloca %struct.myrs_cmdblk*, align 8
  %4 = alloca %union.myrs_cmd_mbox*, align 8
  %5 = alloca %union.myrs_sgl*, align 8
  %6 = alloca i8, align 1
  store %struct.myrs_hba* %0, %struct.myrs_hba** %2, align 8
  %7 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %8 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %7, i32 0, i32 2
  store %struct.myrs_cmdblk* %8, %struct.myrs_cmdblk** %3, align 8
  %9 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %3, align 8
  %10 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %9, i32 0, i32 1
  store %union.myrs_cmd_mbox* %10, %union.myrs_cmd_mbox** %4, align 8
  %11 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %3, align 8
  %12 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  store i8 %13, i8* %6, align 1
  %14 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %3, align 8
  %15 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %14)
  %16 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %17 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %18 = bitcast %union.myrs_cmd_mbox* %17 to %struct.TYPE_7__*
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @MYRS_MCMD_TAG, align 4
  %21 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %22 = bitcast %union.myrs_cmd_mbox* %21 to %struct.TYPE_7__*
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %25 = bitcast %union.myrs_cmd_mbox* %24 to %struct.TYPE_7__*
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %29 = bitcast %union.myrs_cmd_mbox* %28 to %struct.TYPE_7__*
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %33 = bitcast %union.myrs_cmd_mbox* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load i32, i32* @MYRS_IOCTL_GET_HEALTH_STATUS, align 4
  %36 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %37 = bitcast %union.myrs_cmd_mbox* %36 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %40 = bitcast %union.myrs_cmd_mbox* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store %union.myrs_sgl* %41, %union.myrs_sgl** %5, align 8
  %42 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %43 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %union.myrs_sgl*, %union.myrs_sgl** %5, align 8
  %46 = bitcast %union.myrs_sgl* %45 to %struct.TYPE_8__**
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %4, align 8
  %51 = bitcast %union.myrs_cmd_mbox* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %union.myrs_sgl*, %union.myrs_sgl** %5, align 8
  %55 = bitcast %union.myrs_sgl* %54 to %struct.TYPE_8__**
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %60 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %65 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %3, align 8
  %66 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %64, %struct.myrs_cmdblk* %65)
  %67 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %3, align 8
  %68 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 8
  store i8 %69, i8* %6, align 1
  %70 = load i8, i8* %6, align 1
  ret i8 %70
}

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
