; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_add_softcursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_add_softcursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32, i32, i32)* }

@softcursor_original = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @add_softcursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_softcursor(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = call i32 @scr_readw(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 16
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %83

17:                                               ; preds = %1
  %18 = load i32, i32* @softcursor_original, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %83

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* @softcursor_original, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 65280
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65280
  %30 = load i32, i32* %3, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i32, i32* @softcursor_original, align 4
  %37 = and i32 %36, 28672
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 28672
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = xor i32 %42, 28672
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %35, %21
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 1792
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 28672
  %53 = ashr i32 %52, 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = xor i32 %56, 1792
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %48, %44
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @scr_writew(i32 %59, i32* %63)
  %65 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %66 = call i64 @con_should_update(%struct.vc_data* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %58
  %69 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.vc_data*, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32)** %72, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %73(%struct.vc_data* %74, i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %16, %20, %68, %58
  ret void
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32*) #1

declare dso_local i64 @con_should_update(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
