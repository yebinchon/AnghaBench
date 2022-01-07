; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_capi.c_gigaset_isdn_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_capi.c_gigaset_isdn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32*, %struct.gigaset_capi_ctr* }
%struct.gigaset_capi_ctr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"Siemens\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_isdn_start(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.gigaset_capi_ctr*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 2
  %6 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %5, align 8
  store %struct.gigaset_capi_ctr* %6, %struct.gigaset_capi_ctr** %3, align 8
  %7 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %8 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strcpy(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %13 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 2, i32* %15, align 8
  %16 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %17 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %26 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %35 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %42 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 4
  %45 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %46 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 17, i32* %48, align 4
  %49 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %50 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 3, i32* %52, align 4
  %53 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %54 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 2, i32* %56, align 4
  %57 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %58 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %62 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcpy(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %67 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %66, i32 0, i32 0
  %68 = call i32 @capi_ctr_ready(%struct.TYPE_6__* %67)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @capi_ctr_ready(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
