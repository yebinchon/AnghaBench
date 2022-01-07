; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_show_tg_pt_gp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_show_tg_pt_gp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, i32, i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.config_item }
%struct.config_item = type { i32 }

@.str = private unnamed_addr constant [179 x i8] c"TG Port Alias: %s\0ATG Port Group ID: %hu\0ATG Port Primary Access State: %s\0ATG Port Primary Access Status: %s\0ATG Port Secondary Access State: %s\0ATG Port Secondary Access Status: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Offline\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_alua_show_tg_pt_gp_info(%struct.se_lun* %0, i8* %1) #0 {
  %3 = alloca %struct.se_lun*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %7 = alloca i32, align 4
  store %struct.se_lun* %0, %struct.se_lun** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %9 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %12 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %11, i32 0, i32 3
  %13 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  store %struct.t10_alua_tg_pt_gp* %13, %struct.t10_alua_tg_pt_gp** %6, align 8
  %14 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %15 = icmp ne %struct.t10_alua_tg_pt_gp* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %18 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.config_item* %19, %struct.config_item** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.config_item*, %struct.config_item** %5, align 8
  %22 = call i8* @config_item_name(%struct.config_item* %21)
  %23 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %27 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @core_alua_dump_state(i32 %28)
  %30 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %31 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @core_alua_dump_status(i32 %32)
  %34 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %35 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %34, i32 0, i32 2
  %36 = call i64 @atomic_read(i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %41 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @core_alua_dump_status(i32 %42)
  %44 = call i64 @sprintf(i8* %20, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %25, i8* %29, i8* %33, i8* %39, i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %16, %2
  %50 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %51 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @config_item_name(%struct.config_item*) #1

declare dso_local i8* @core_alua_dump_state(i32) #1

declare dso_local i8* @core_alua_dump_status(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
