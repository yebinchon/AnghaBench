; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i32 }
%struct.aha1542_hostdata = type { %struct.TYPE_4__*, %struct.scsi_cmnd** }
%struct.TYPE_4__ = type { i64 }

@STATMASK = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@STST = common dso_local global i32 0, align 4
@DIAGF = common dso_local global i32 0, align 4
@INVDCMD = common dso_local global i32 0, align 4
@DF = common dso_local global i32 0, align 4
@CDF = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@HRST = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Sent BUS RESET to scsi host %d\0A\00", align 1
@AHA1542_MAILBOXES = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @aha1542_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_reset(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.aha1542_hostdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %6, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = call %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.aha1542_hostdata* %17, %struct.aha1542_hostdata** %7, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %27, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CONTROL(i32 %30)
  %32 = call i32 @outb(i32 %23, i32 %31)
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %36, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @STATUS(i32 %39)
  %41 = load i32, i32* @STATMASK, align 4
  %42 = load i32, i32* @IDLE, align 4
  %43 = load i32, i32* @STST, align 4
  %44 = load i32, i32* @DIAGF, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @INVDCMD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DF, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CDF, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @wait_mask(i32 %40, i32 %41, i32 %42, i32 %51, i32 0)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %2
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  %60 = load i32, i32* @FAILED, align 4
  store i32 %60, i32* %3, align 4
  br label %143

61:                                               ; preds = %2
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HRST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %70, align 8
  %72 = call i32 @setup_mailboxes(%struct.Scsi_Host* %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* @KERN_WARNING, align 4
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %78, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %83, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @shost_printk(i32 %74, %struct.Scsi_Host* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %133, %73
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %88
  %93 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %7, align 8
  %94 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %93, i32 0, i32 1
  %95 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %95, i64 %97
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %98, align 8
  %100 = icmp ne %struct.scsi_cmnd* %99, null
  br i1 %100, label %101, label %132

101:                                              ; preds = %92
  %102 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %7, align 8
  %103 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %102, i32 0, i32 1
  %104 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %104, i64 %106
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %107, align 8
  store %struct.scsi_cmnd* %108, %struct.scsi_cmnd** %10, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %133

116:                                              ; preds = %101
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %118 = call i32 @aha1542_free_cmd(%struct.scsi_cmnd* %117)
  %119 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %7, align 8
  %120 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %119, i32 0, i32 1
  %121 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %121, i64 %123
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %124, align 8
  %125 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %7, align 8
  %126 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %116, %92
  br label %133

133:                                              ; preds = %132, %115
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %88

136:                                              ; preds = %88
  %137 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %138 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32 %139, i64 %140)
  %142 = load i32, i32* @SUCCESS, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %136, %54
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CONTROL(i32) #1

declare dso_local i32 @wait_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @STATUS(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @setup_mailboxes(%struct.Scsi_Host*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i32) #1

declare dso_local i32 @aha1542_free_cmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
