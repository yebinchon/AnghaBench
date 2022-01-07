; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_at_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_at_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32*, i32, i32, %struct.bc_state*, %struct.cardstate*, i32**, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.bc_state = type { i32 }
%struct.cardstate = type { i32, i32 }

@STR_NUM = common dso_local global i32 0, align 4
@VAR_ZDLE = common dso_local global i64 0, align 8
@VAR_ZCTP = common dso_local global i64 0, align 8
@ZSAU_NULL = common dso_local global i32 0, align 4
@VAR_ZSAU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_at_init(%struct.at_state_t* %0, %struct.bc_state* %1, %struct.cardstate* %2, i32 %3) #0 {
  %5 = alloca %struct.at_state_t*, align 8
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.at_state_t* %0, %struct.at_state_t** %5, align 8
  store %struct.bc_state* %1, %struct.bc_state** %6, align 8
  store %struct.cardstate* %2, %struct.cardstate** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %11 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %10, i32 0, i32 14
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %14 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %13, i32 0, i32 13
  store i64 0, i64* %14, align 8
  %15 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %16 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %15, i32 0, i32 12
  store i64 0, i64* %16, align 8
  %17 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %18 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %20 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %22 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %24 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %26 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %28 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %40, %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @STR_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %35 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %34, i32 0, i32 5
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %45 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @VAR_ZDLE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %50 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @VAR_ZCTP, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 -1, i32* %53, align 4
  %54 = load i32, i32* @ZSAU_NULL, align 4
  %55 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %56 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @VAR_ZSAU, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %61 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %62 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %61, i32 0, i32 4
  store %struct.cardstate* %60, %struct.cardstate** %62, align 8
  %63 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %64 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %65 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %64, i32 0, i32 3
  store %struct.bc_state* %63, %struct.bc_state** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %68 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %43
  %72 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %76 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %83

77:                                               ; preds = %43
  %78 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %79 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.at_state_t*, %struct.at_state_t** %5, align 8
  %82 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %71
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
