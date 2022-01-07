; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_allocate_ooo_cmdsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_allocate_ooo_cmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_ooo_cmdsn = type { i32 }

@lio_ooo_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to allocate memory for struct iscsi_ooo_cmdsn.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_ooo_cmdsn* ()* @iscsit_allocate_ooo_cmdsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_ooo_cmdsn* @iscsit_allocate_ooo_cmdsn() #0 {
  %1 = alloca %struct.iscsi_ooo_cmdsn*, align 8
  %2 = alloca %struct.iscsi_ooo_cmdsn*, align 8
  store %struct.iscsi_ooo_cmdsn* null, %struct.iscsi_ooo_cmdsn** %2, align 8
  %3 = load i32, i32* @lio_ooo_cache, align 4
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.iscsi_ooo_cmdsn* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.iscsi_ooo_cmdsn* %5, %struct.iscsi_ooo_cmdsn** %2, align 8
  %6 = load %struct.iscsi_ooo_cmdsn*, %struct.iscsi_ooo_cmdsn** %2, align 8
  %7 = icmp ne %struct.iscsi_ooo_cmdsn* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_ooo_cmdsn* null, %struct.iscsi_ooo_cmdsn** %1, align 8
  br label %15

10:                                               ; preds = %0
  %11 = load %struct.iscsi_ooo_cmdsn*, %struct.iscsi_ooo_cmdsn** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_ooo_cmdsn, %struct.iscsi_ooo_cmdsn* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.iscsi_ooo_cmdsn*, %struct.iscsi_ooo_cmdsn** %2, align 8
  store %struct.iscsi_ooo_cmdsn* %14, %struct.iscsi_ooo_cmdsn** %1, align 8
  br label %15

15:                                               ; preds = %10, %8
  %16 = load %struct.iscsi_ooo_cmdsn*, %struct.iscsi_ooo_cmdsn** %1, align 8
  ret %struct.iscsi_ooo_cmdsn* %16
}

declare dso_local %struct.iscsi_ooo_cmdsn* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
