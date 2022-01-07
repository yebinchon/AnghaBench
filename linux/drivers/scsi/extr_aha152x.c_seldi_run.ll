; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_seldi_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_seldi_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_8__ = type { i32* }

@SCSISIG = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@CLRSELDI = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRPHASECHG = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_7__* null, align 8
@not_issued = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"command should not have been issued yet\0A\00", align 1
@ISSUE_SC = common dso_local global i32 0, align 4
@DISCONNECTED_SC = common dso_local global i32 0, align 4
@RECONN_TARGET = common dso_local global i32 0, align 4
@SELID = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"target id unknown (%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"multiple targets reconnected (%02x)\0A\00", align 1
@SCSIID = common dso_local global i32 0, align 4
@OID_ = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @seldi_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seldi_run(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load i32, i32* @SCSISIG, align 4
  %7 = call i32 @SETPORT(i32 %6, i32 0)
  %8 = load i32, i32* @SSTAT0, align 4
  %9 = load i32, i32* @CLRSELDI, align 4
  %10 = call i32 @SETPORT(i32 %8, i32 %9)
  %11 = load i32, i32* @SSTAT1, align 4
  %12 = load i32, i32* @CLRBUSFREE, align 4
  %13 = call i32 @SETPORT(i32 %11, i32 %12)
  %14 = load i32, i32* @SSTAT1, align 4
  %15 = load i32, i32* @CLRPHASECHG, align 4
  %16 = call i32 @SETPORT(i32 %14, i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @not_issued, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %30 = call i32 @scmd_printk(i32 %28, %struct.TYPE_7__* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @DO_LOCK(i64 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CURRENT_SC, align 8
  %35 = call i32 @append_SC(i32* @ISSUE_SC, %struct.TYPE_7__* %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @DO_UNLOCK(i64 %36)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @CURRENT_SC, align 8
  br label %38

38:                                               ; preds = %31, %1
  %39 = load i32, i32* @DISCONNECTED_SC, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %104

42:                                               ; preds = %38
  store i32 -1, i32* @RECONN_TARGET, align 4
  %43 = load i32, i32* @SELID, align 4
  %44 = call i32 @GETPORT(i32 %43)
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %44, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @shost_printk(i32 %54, %struct.Scsi_Host* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %104

58:                                               ; preds = %42
  store i32 7, i32* %4, align 4
  br label %59

59:                                               ; preds = %67, %58
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %4, align 4
  br label %59

70:                                               ; preds = %59
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @shost_printk(i32 %78, %struct.Scsi_Host* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* @SCSIID, align 4
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @OID_, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @SETPORT(i32 %83, i32 %90)
  %92 = load i32, i32* @SCSISEQ, align 4
  %93 = call i32 @SETPORT(i32 %92, i32 0)
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %95 = call %struct.TYPE_8__* @HOSTDATA(%struct.Scsi_Host* %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SETRATE(i32 %101)
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* @RECONN_TARGET, align 4
  br label %104

104:                                              ; preds = %82, %53, %41
  ret void
}

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @DO_LOCK(i64) #1

declare dso_local i32 @append_SC(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @DO_UNLOCK(i64) #1

declare dso_local i32 @GETPORT(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i32) #1

declare dso_local i32 @SETRATE(i32) #1

declare dso_local %struct.TYPE_8__* @HOSTDATA(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
