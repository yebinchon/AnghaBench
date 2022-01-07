; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_set_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_set_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.dlm_lkb = type { i64, i32, i32 }

@RSB_MASTER_UNCERTAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"set_master %x self master %d dir %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @set_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_master(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  %7 = call i32 (...) @dlm_our_nodeid()
  store i32 %7, i32* %6, align 4
  %8 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %9 = load i32, i32* @RSB_MASTER_UNCERTAIN, align 4
  %10 = call i64 @rsb_flag(%struct.dlm_rsb* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %14 = load i32, i32* @RSB_MASTER_UNCERTAIN, align 4
  %15 = call i32 @rsb_clear_flag(%struct.dlm_rsb* %13, i32 %14)
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %105

26:                                               ; preds = %2
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %41 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %40, i32 0, i32 2
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %43 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %42, i32 0, i32 6
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  store i32 1, i32* %3, align 4
  br label %105

45:                                               ; preds = %31, %26
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %47 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %105

54:                                               ; preds = %45
  %55 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %56 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %61 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %64 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %105

65:                                               ; preds = %54
  %66 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %67 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %72 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %78 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %81 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %84 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @log_debug(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %79, i32 %82, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %89 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %91 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %90, i32 0, i32 1
  store i32 0, i32* %91, align 8
  %92 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %93 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %92, i32 0, i32 1
  store i32 0, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %105

94:                                               ; preds = %65
  %95 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %96 = call i32 @wait_pending_remove(%struct.dlm_rsb* %95)
  %97 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %98 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %101 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %103 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %104 = call i32 @send_lookup(%struct.dlm_rsb* %102, %struct.dlm_lkb* %103)
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %94, %70, %59, %51, %39, %12
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i64 @rsb_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @rsb_clear_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @log_debug(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @wait_pending_remove(%struct.dlm_rsb*) #1

declare dso_local i32 @send_lookup(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
