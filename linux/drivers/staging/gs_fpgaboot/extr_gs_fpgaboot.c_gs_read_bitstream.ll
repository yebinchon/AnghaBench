; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_read_bitstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_read_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpgaimage = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpgaimage*)* @gs_read_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_read_bitstream(%struct.fpgaimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpgaimage*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fpgaimage* %0, %struct.fpgaimage** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %8 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %7, i32 0, i32 6
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @readmagic_bitstream(i32* %13, i32* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %79

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %22 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAX_STR, align 4
  %25 = call i32 @readinfo_bitstream(i32* %20, i32 %23, i32 %24, i32* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %79

30:                                               ; preds = %19
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %33 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_STR, align 4
  %36 = call i32 @readinfo_bitstream(i32* %31, i32 %34, i32 %35, i32* %5)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %44 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAX_STR, align 4
  %47 = call i32 @readinfo_bitstream(i32* %42, i32 %45, i32 %46, i32* %5)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %79

52:                                               ; preds = %41
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %55 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAX_STR, align 4
  %58 = call i32 @readinfo_bitstream(i32* %53, i32 %56, i32 %57, i32* %5)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %79

63:                                               ; preds = %52
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %66 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %65, i32 0, i32 1
  %67 = call i32 @readlength_bitstream(i32* %64, i32* %66, i32* %5)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load %struct.fpgaimage*, %struct.fpgaimage** %3, align 8
  %78 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %70, %61, %50, %39, %28, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @readmagic_bitstream(i32*, i32*) #1

declare dso_local i32 @readinfo_bitstream(i32*, i32, i32, i32*) #1

declare dso_local i32 @readlength_bitstream(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
