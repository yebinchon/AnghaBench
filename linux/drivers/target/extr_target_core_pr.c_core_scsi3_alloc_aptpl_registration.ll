; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_aptpl_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_aptpl_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_reservation = type { i32 }
%struct.t10_pr_registration = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Illegal parameters for APTPL registration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@t10_pr_reg_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to allocate struct t10_pr_registration\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PR_REG_ISID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PR_APTPL_MAX_IPORT_LEN = common dso_local global i32 0, align 4
@PR_APTPL_MAX_TPORT_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"SPC-3 PR APTPL Successfully added registration%s from metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"+reservation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_scsi3_alloc_aptpl_registration(%struct.t10_reservation* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.t10_reservation*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.t10_pr_registration*, align 8
  store %struct.t10_reservation* %0, %struct.t10_reservation** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load i8*, i8** %18, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %27, %11
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %133

37:                                               ; preds = %30
  %38 = load i32, i32* @t10_pr_reg_cache, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.t10_pr_registration* @kmem_cache_zalloc(i32 %38, i32 %39)
  store %struct.t10_pr_registration* %40, %struct.t10_pr_registration** %24, align 8
  %41 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %42 = icmp ne %struct.t10_pr_registration* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %133

47:                                               ; preds = %37
  %48 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %49 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %48, i32 0, i32 21
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %52 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %51, i32 0, i32 20
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %55 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %54, i32 0, i32 4
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %58 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %57, i32 0, i32 19
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %61 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %60, i32 0, i32 18
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %64 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %63, i32 0, i32 17
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  %66 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %67 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %66, i32 0, i32 16
  store i32* null, i32** %67, align 8
  %68 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %69 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %68, i32 0, i32 15
  store i32* null, i32** %69, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %72 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %71, i32 0, i32 14
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %75 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %74, i32 0, i32 13
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %78 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %77, i32 0, i32 12
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %22, align 4
  %80 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %81 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %83 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %85 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %84, i32 0, i32 11
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %23, align 4
  %87 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %88 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %47
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @get_unaligned_be64(i8* %92)
  %94 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %95 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %94, i32 0, i32 9
  store i32 %93, i32* %95, align 4
  %96 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %97 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %100 = load i8*, i8** %16, align 8
  %101 = call i32 @snprintf(i32 %98, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  %102 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %103 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %91, %47
  %105 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %106 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PR_APTPL_MAX_IPORT_LEN, align 4
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @snprintf(i32 %107, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  %111 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %112 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PR_APTPL_MAX_TPORT_LEN, align 4
  %115 = load i8*, i8** %18, align 8
  %116 = call i32 @snprintf(i32 %113, i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %119 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %122 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %124 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %123, i32 0, i32 4
  %125 = load %struct.t10_reservation*, %struct.t10_reservation** %13, align 8
  %126 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %125, i32 0, i32 0
  %127 = call i32 @list_add_tail(i32* %124, i32* %126)
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %104, %43, %33
  %134 = load i32, i32* %12, align 4
  ret i32 %134
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.t10_pr_registration* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @get_unaligned_be64(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
