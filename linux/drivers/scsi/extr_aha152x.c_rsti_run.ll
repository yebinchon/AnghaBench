; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_rsti_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_rsti_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"scsi reset in\0A\00", align 1
@DISCONNECTED_SC = common dso_local global %struct.scsi_cmnd* null, align 8
@DID_RESET = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @rsti_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsti_run(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load i32, i32* @KERN_NOTICE, align 4
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = call i32 @shost_printk(i32 %5, %struct.Scsi_Host* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @DISCONNECTED_SC, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %3, align 8
  br label %9

9:                                                ; preds = %39, %1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = icmp ne %struct.scsi_cmnd* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = call %struct.scsi_cmnd* @SCNEXT(%struct.scsi_cmnd* %13)
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %4, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %12
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = call i32 @remove_SC(%struct.scsi_cmnd** @DISCONNECTED_SC, %struct.scsi_cmnd* %22)
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @DID_RESET, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 1
  %36 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %35, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = call i32 %36(%struct.scsi_cmnd* %37)
  br label %39

39:                                               ; preds = %21, %12
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  store %struct.scsi_cmnd* %40, %struct.scsi_cmnd** %3, align 8
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CURRENT_SC, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CURRENT_SC, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %53 = load i32, i32* @DID_RESET, align 4
  %54 = shl i32 %53, 16
  %55 = call i32 @done(%struct.Scsi_Host* %52, i32 %54)
  br label %56

56:                                               ; preds = %51, %44, %41
  ret void
}

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local %struct.scsi_cmnd* @SCNEXT(%struct.scsi_cmnd*) #1

declare dso_local i32 @remove_SC(%struct.scsi_cmnd**, %struct.scsi_cmnd*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @done(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
