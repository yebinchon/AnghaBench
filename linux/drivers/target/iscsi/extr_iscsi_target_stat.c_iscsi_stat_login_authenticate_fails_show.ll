; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_stat.c_iscsi_stat_login_authenticate_fails_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_stat.c_iscsi_stat_login_authenticate_fails_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.iscsi_tiqn = type { %struct.iscsi_login_stats }
%struct.iscsi_login_stats = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @iscsi_stat_login_authenticate_fails_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_stat_login_authenticate_fails_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iscsi_tiqn*, align 8
  %6 = alloca %struct.iscsi_login_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.config_item*, %struct.config_item** %3, align 8
  %9 = call %struct.iscsi_tiqn* @iscsi_login_stat_tiqn(%struct.config_item* %8)
  store %struct.iscsi_tiqn* %9, %struct.iscsi_tiqn** %5, align 8
  %10 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %10, i32 0, i32 0
  store %struct.iscsi_login_stats* %11, %struct.iscsi_login_stats** %6, align 8
  %12 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.iscsi_login_stats*, %struct.iscsi_login_stats** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_login_stats, %struct.iscsi_login_stats* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local %struct.iscsi_tiqn* @iscsi_login_stat_tiqn(%struct.config_item*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
