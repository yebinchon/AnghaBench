; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_free_hard_reset_SCs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_free_hard_reset_SCs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"queue corrupted at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_cmnd**)* @free_hard_reset_SCs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hard_reset_SCs(%struct.Scsi_Host* %0, %struct.scsi_cmnd** %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd**, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd** %1, %struct.scsi_cmnd*** %4, align 8
  %7 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  br label %9

9:                                                ; preds = %46, %2
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = icmp ne %struct.scsi_cmnd* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = call i64 @SCDATA(%struct.scsi_cmnd* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %18 = call %struct.scsi_cmnd* @SCNEXT(%struct.scsi_cmnd* %17)
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %6, align 8
  br label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @KERN_DEBUG, align 4
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = call i32 @scmd_printk(i32 %20, %struct.scsi_cmnd* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %22)
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %6, align 8
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %24
  %32 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %4, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = call i32 @remove_SC(%struct.scsi_cmnd** %32, %struct.scsi_cmnd* %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = call %struct.TYPE_4__* @HOSTDATA(%struct.Scsi_Host* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %31, %24
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %47, %struct.scsi_cmnd** %5, align 8
  br label %9

48:                                               ; preds = %9
  ret void
}

declare dso_local i64 @SCDATA(%struct.scsi_cmnd*) #1

declare dso_local %struct.scsi_cmnd* @SCNEXT(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @remove_SC(%struct.scsi_cmnd**, %struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_4__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
