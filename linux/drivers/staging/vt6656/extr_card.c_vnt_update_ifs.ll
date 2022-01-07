; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_update_ifs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_update_ifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i32, i32, i64, i8*, i8*, i32, i64 }

@PK_TYPE_11A = common dso_local global i64 0, align 8
@C_SLOT_SHORT = common dso_local global i32 0, align 4
@C_SIFS_A = common dso_local global i8* null, align 8
@C_SIFS_BG = common dso_local global i8* null, align 8
@C_SLOT_LONG = common dso_local global i32 0, align 4
@C_EIFS = common dso_local global i64 0, align 8
@BB_TYPE_11B = common dso_local global i32 0, align 4
@BB_TYPE_11A = common dso_local global i32 0, align 4
@MESSAGE_TYPE_WRITE = common dso_local global i32 0, align 4
@MAC_REG_SIFS = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4
@MAC_REG_CWMAXMIN0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_update_ifs(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PK_TYPE_11A, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @C_SLOT_SHORT, align 4
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** @C_SIFS_A, align 8
  %15 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @C_SIFS_A, align 8
  %18 = load i32, i32* @C_SLOT_SHORT, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %17, i64 %20
  %22 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %23 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  store i32 4, i32* %3, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load i8*, i8** @C_SIFS_BG, align 8
  %26 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %29 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @C_SLOT_SHORT, align 4
  %34 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %35 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i32 4, i32* %3, align 4
  br label %40

36:                                               ; preds = %24
  %37 = load i32, i32* @C_SLOT_LONG, align 4
  %38 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  store i32 5, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** @C_SIFS_BG, align 8
  %42 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %41, i64 %46
  %48 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %40, %10
  %51 = load i64, i64* @C_EIFS, align 8
  %52 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %115 [
    i32 129, label %57
    i32 135, label %73
    i32 134, label %73
    i32 133, label %73
    i32 131, label %81
    i32 130, label %81
    i32 128, label %81
    i32 132, label %90
  ]

57:                                               ; preds = %50
  %58 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %59 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BB_TYPE_11B, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i64 -1
  store i8* %67, i8** %65, align 8
  %68 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %69 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr i8, i8* %70, i64 -1
  store i8* %71, i8** %69, align 8
  br label %115

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %50, %50, %50, %72
  %74 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %75 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BB_TYPE_11B, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %115

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %50, %50, %50, %80
  %82 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr i8, i8* %84, i64 -3
  store i8* %85, i8** %83, align 8
  %86 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %87 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr i8, i8* %88, i64 -3
  store i8* %89, i8** %87, align 8
  br label %115

90:                                               ; preds = %50
  %91 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %92 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BB_TYPE_11A, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %98 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr i8, i8* %99, i64 -5
  store i8* %100, i8** %98, align 8
  %101 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %102 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr i8, i8* %103, i64 -5
  store i8* %104, i8** %102, align 8
  br label %114

105:                                              ; preds = %90
  %106 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %107 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %106, i32 0, i32 5
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr i8, i8* %108, i64 -2
  store i8* %109, i8** %107, align 8
  %110 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %111 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr i8, i8* %112, i64 -2
  store i8* %113, i8** %111, align 8
  br label %114

114:                                              ; preds = %105, %96
  br label %115

115:                                              ; preds = %50, %114, %81, %79, %63
  %116 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %117 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 %119, i32* %120, align 16
  %121 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %122 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %127 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  store i32 %129, i32* %130, align 8
  %131 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %132 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  store i32 %133, i32* %134, align 4
  %135 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %136 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %137 = load i32, i32* @MAC_REG_SIFS, align 4
  %138 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %140 = call i32 @vnt_control_out(%struct.vnt_private* %135, i32 %136, i32 %137, i32 %138, i32 4, i32* %139)
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, 160
  store i32 %142, i32* %3, align 4
  %143 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %144 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %145 = load i32, i32* @MAC_REG_CWMAXMIN0, align 4
  %146 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %147 = call i32 @vnt_control_out(%struct.vnt_private* %143, i32 %144, i32 %145, i32 %146, i32 1, i32* %3)
  ret void
}

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
