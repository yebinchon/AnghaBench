; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlm_message = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DLM_CB_BAST = common dso_local global i32 0, align 4
@DLM_CB_CAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.dlm_message*)* @send_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_args(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, %struct.dlm_message* %2) #0 {
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_message* %2, %struct.dlm_message** %6, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %8 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 14
  store i32 %9, i32* %11, align 4
  %12 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %16 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %15, i32 0, i32 13
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %18 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %21 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %43 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %48 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %51 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %56 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %58 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %61 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %63 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %66 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %68 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %3
  %72 = load i32, i32* @DLM_CB_BAST, align 4
  %73 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %74 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %3
  %78 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %79 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @DLM_CB_CAST, align 4
  %84 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %85 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %77
  %89 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %90 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %122 [
    i32 130, label %92
    i32 131, label %92
    i32 134, label %103
    i32 128, label %103
    i32 129, label %103
    i32 133, label %103
    i32 132, label %103
  ]

92:                                               ; preds = %88, %88
  %93 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %94 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %97 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %100 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memcpy(i32 %95, i32 %98, i32 %101)
  br label %122

103:                                              ; preds = %88, %88, %88, %88, %88
  %104 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %105 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %122

109:                                              ; preds = %103
  %110 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %111 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %114 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %117 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memcpy(i32 %112, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %88, %109, %108, %92
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
