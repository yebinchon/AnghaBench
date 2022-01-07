; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_show_access_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_show_access_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32 }

@TPGS_EXPLICIT_ALUA = common dso_local global i32 0, align 4
@TPGS_IMPLICIT_ALUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Implicit and Explicit\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Implicit\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Explicit\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_alua_show_access_type(%struct.t10_alua_tg_pt_gp* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %5 = alloca i8*, align 8
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %4, align 8
  %7 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TPGS_EXPLICIT_ALUA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %4, align 8
  %14 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TPGS_IMPLICIT_ALUA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %12, %2
  %23 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %4, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TPGS_IMPLICIT_ALUA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %22
  %33 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %4, align 8
  %34 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TPGS_EXPLICIT_ALUA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39, %29, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
