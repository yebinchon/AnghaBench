; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32 }
%struct.aha1542_hostdata = type { i32, i64, %struct.scsi_cmnd**, %struct.ccb*, %struct.mailbox* }
%struct.ccb = type { i32, i32, i64, i64* }
%struct.mailbox = type { i64, i32 }

@AHA1542_MAILBOXES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to find empty mailbox for aha1542.\0A\00", align 1
@CMD_START_SCSI = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Trying device reset for target\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aha1542_dev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_dev_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.aha1542_hostdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mailbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccb*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %3, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.aha1542_hostdata* %17, %struct.aha1542_hostdata** %4, align 8
  %18 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %19 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %18, i32 0, i32 4
  %20 = load %struct.mailbox*, %struct.mailbox** %19, align 8
  store %struct.mailbox* %20, %struct.mailbox** %6, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %32 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %31, i32 0, i32 3
  %33 = load %struct.ccb*, %struct.ccb** %32, align 8
  store %struct.ccb* %33, %struct.ccb** %10, align 8
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32 %36, i64 %37)
  %39 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %40 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %1
  br label %48

48:                                               ; preds = %74, %47
  %49 = load %struct.mailbox*, %struct.mailbox** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mailbox, %struct.mailbox* %49, i64 %51
  %53 = getelementptr inbounds %struct.mailbox, %struct.mailbox* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %58 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %57, i32 0, i32 2
  %59 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %59, i64 %61
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %62, align 8
  %64 = icmp eq %struct.scsi_cmnd* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %80

66:                                               ; preds = %56, %48
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %66
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %77 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %48, label %80

80:                                               ; preds = %74, %65
  %81 = load %struct.mailbox*, %struct.mailbox** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mailbox, %struct.mailbox* %81, i64 %83
  %85 = getelementptr inbounds %struct.mailbox, %struct.mailbox* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %80
  %89 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %90 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %89, i32 0, i32 2
  %91 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %91, i64 %93
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %94, align 8
  %96 = icmp ne %struct.scsi_cmnd* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %88, %80
  %98 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %88
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %101 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %102 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %101, i32 0, i32 2
  %103 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %103, i64 %105
  store %struct.scsi_cmnd* %100, %struct.scsi_cmnd** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %109 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.mailbox*, %struct.mailbox** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mailbox, %struct.mailbox* %110, i64 %112
  %114 = getelementptr inbounds %struct.mailbox, %struct.mailbox* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %4, align 8
  %117 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 24
  %122 = add i64 %118, %121
  %123 = call i32 @any2scsi(i32 %115, i64 %122)
  %124 = load %struct.ccb*, %struct.ccb** %10, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ccb, %struct.ccb* %124, i64 %126
  %128 = call i32 @memset(%struct.ccb* %127, i32 0, i32 24)
  %129 = load %struct.ccb*, %struct.ccb** %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ccb, %struct.ccb* %129, i64 %131
  %133 = getelementptr inbounds %struct.ccb, %struct.ccb* %132, i32 0, i32 0
  store i32 129, i32* %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 7
  %136 = shl i32 %135, 5
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 7
  %139 = or i32 %136, %138
  %140 = load %struct.ccb*, %struct.ccb** %10, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ccb, %struct.ccb* %140, i64 %142
  %144 = getelementptr inbounds %struct.ccb, %struct.ccb* %143, i32 0, i32 1
  store i32 %139, i32* %144, align 4
  %145 = load %struct.ccb*, %struct.ccb** %10, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ccb, %struct.ccb* %145, i64 %147
  %149 = getelementptr inbounds %struct.ccb, %struct.ccb* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.ccb*, %struct.ccb** %10, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.ccb, %struct.ccb* %152, i64 %154
  %156 = getelementptr inbounds %struct.ccb, %struct.ccb* %155, i32 0, i32 3
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.ccb*, %struct.ccb** %10, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ccb, %struct.ccb* %159, i64 %161
  %163 = getelementptr inbounds %struct.ccb, %struct.ccb* %162, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  store i64 0, i64* %165, align 8
  %166 = load %struct.ccb*, %struct.ccb** %10, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ccb, %struct.ccb* %166, i64 %168
  %170 = getelementptr inbounds %struct.ccb, %struct.ccb* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  %171 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %172 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CMD_START_SCSI, align 4
  %175 = call i32 @aha1542_outb(i32 %173, i32 %174)
  %176 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %177 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32 %178, i64 %179)
  %181 = load i32, i32* @KERN_WARNING, align 4
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %183 = call i32 @scmd_printk(i32 %181, %struct.scsi_cmnd* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* @SUCCESS, align 4
  ret i32 %184
}

declare dso_local %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @any2scsi(i32, i64) #1

declare dso_local i32 @memset(%struct.ccb*, i32, i32) #1

declare dso_local i32 @aha1542_outb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
