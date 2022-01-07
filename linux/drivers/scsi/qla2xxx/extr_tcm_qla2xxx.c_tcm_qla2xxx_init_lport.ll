; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_init_lport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_init_lport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_qla2xxx_lport = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Unable to initialize lport->lport_fcport_map btree\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to allocate lport->lport_loopid_map of %zu bytes\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"qla2xxx: Allocated lport_loopid_map of %zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_qla2xxx_lport*)* @tcm_qla2xxx_init_lport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_init_lport(%struct.tcm_qla2xxx_lport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %4 = alloca i32, align 4
  store %struct.tcm_qla2xxx_lport* %0, %struct.tcm_qla2xxx_lport** %3, align 8
  %5 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %3, align 8
  %6 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %5, i32 0, i32 0
  %7 = call i32 @btree_init32(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = call i32 @array_size(i32 65536, i32 4)
  %15 = call i32 @vzalloc(i32 %14)
  %16 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %3, align 8
  %17 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %3, align 8
  %19 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %13
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 262144)
  %24 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %3, align 8
  %25 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %24, i32 0, i32 0
  %26 = call i32 @btree_destroy32(i32* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %13
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 262144)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %22, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @btree_init32(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @btree_destroy32(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
