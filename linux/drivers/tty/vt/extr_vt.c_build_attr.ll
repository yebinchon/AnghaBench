; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_build_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_build_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* @build_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_attr(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)**
  %22 = load i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %7
  %25 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)**
  %30 = load i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 %30(%struct.vc_data* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %134

39:                                               ; preds = %7
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %16, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 0
  %51 = or i32 %46, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 4, i32 0
  %56 = or i32 %51, %55
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 8, i32 0
  %61 = or i32 %56, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 128, i32 0
  %66 = or i32 %61, %65
  store i32 %66, i32* %8, align 4
  br label %134

67:                                               ; preds = %39
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = and i32 %71, 240
  %73 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %74 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %72, %75
  store i32 %76, i32* %16, align 4
  br label %99

77:                                               ; preds = %67
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = and i32 %81, 240
  %83 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  store i32 %86, i32* %16, align 4
  br label %98

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = and i32 %91, 240
  %93 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %92, %95
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %90, %87
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %70
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %103, 136
  %105 = load i32, i32* %16, align 4
  %106 = ashr i32 %105, 4
  %107 = load i32, i32* %16, align 4
  %108 = shl i32 %107, 4
  %109 = or i32 %106, %108
  %110 = and i32 %109, 119
  %111 = or i32 %104, %110
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %102, %99
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %16, align 4
  %117 = xor i32 %116, 128
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  %123 = xor i32 %122, 8
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %126 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 256
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %16, align 4
  %131 = shl i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %45, %24
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
