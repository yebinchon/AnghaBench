; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_aha152x_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_aha152x_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ISSUE_SC = common dso_local global i32 0, align 4
@PORTA = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cannot abort running or disconnected command\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aha152x_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha152x_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @DO_LOCK(i64 %12)
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = call %struct.scsi_cmnd* @remove_SC(i32* @ISSUE_SC, %struct.scsi_cmnd* %14)
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %5, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = icmp ne %struct.scsi_cmnd* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = call %struct.TYPE_4__* @HOSTDATA(%struct.Scsi_Host* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = call %struct.TYPE_4__* @HOSTDATA(%struct.Scsi_Host* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @PORTA, align 4
  %31 = call i32 @SETPORT(i32 %30, i32 0)
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @DO_UNLOCK(i64 %33)
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @SUCCESS, align 4
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %1
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @DO_UNLOCK(i64 %43)
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = call i32 @scmd_printk(i32 %45, %struct.scsi_cmnd* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @DO_LOCK(i64) #1

declare dso_local %struct.scsi_cmnd* @remove_SC(i32*, %struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_4__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @DO_UNLOCK(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
