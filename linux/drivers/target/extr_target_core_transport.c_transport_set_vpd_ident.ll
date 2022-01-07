; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_set_vpd_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_set_vpd_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_vpd = type { i8, i8*, i64 }

@transport_set_vpd_ident.hex_str = internal constant [17 x i8] c"0123456789abcdef\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_set_vpd_ident(%struct.t10_vpd* %0, i8* %1) #0 {
  %3 = alloca %struct.t10_vpd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.t10_vpd* %0, %struct.t10_vpd** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 15
  %12 = trunc i32 %11 to i8
  %13 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %14 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %13, i32 0, i32 0
  store i8 %12, i8* %14, align 8
  %15 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %16 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  switch i32 %18, label %103 [
    i32 1, label %19
    i32 2, label %79
    i32 3, label %79
  ]

19:                                               ; preds = %2
  %20 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %21 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [17 x i8], [17 x i8]* @transport_set_vpd_ident.hex_str, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %26 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %24, i8* %31, align 1
  br label %32

32:                                               ; preds = %40, %19
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 4, %37
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 240
  %48 = ashr i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [17 x i8], [17 x i8]* @transport_set_vpd_ident.hex_str, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %53 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 %51, i8* %58, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [17 x i8], [17 x i8]* @transport_set_vpd_ident.hex_str, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %70 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 %68, i8* %75, align 1
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %32

78:                                               ; preds = %32
  br label %104

79:                                               ; preds = %2, %2
  br label %80

80:                                               ; preds = %88, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 4, %85
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %96 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %94, i8* %101, align 1
  br label %80

102:                                              ; preds = %80
  br label %104

103:                                              ; preds = %2
  br label %104

104:                                              ; preds = %103, %102, %78
  %105 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %106 = call i32 @transport_dump_vpd_ident(%struct.t10_vpd* %105, i32* null, i32 0)
  ret i32 %106
}

declare dso_local i32 @transport_dump_vpd_ident(%struct.t10_vpd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
