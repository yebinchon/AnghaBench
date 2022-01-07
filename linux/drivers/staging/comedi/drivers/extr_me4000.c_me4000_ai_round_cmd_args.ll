; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_round_cmd_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_round_cmd_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.me4000_private* }
%struct.me4000_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@CMDF_ROUND_NEAREST = common dso_local global i32 0, align 4
@CMDF_ROUND_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @me4000_ai_round_cmd_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @me4000_ai_round_cmd_args(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca %struct.me4000_private*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %6, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.me4000_private*, %struct.me4000_private** %10, align 8
  store %struct.me4000_private* %11, %struct.me4000_private** %7, align 8
  %12 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %13 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %15 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %17 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %16, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %3
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 33
  %27 = sdiv i32 %26, 1000
  %28 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %29 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 33
  %34 = srem i32 %33, 1000
  store i32 %34, i32* %8, align 4
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 33
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %47 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %69

51:                                               ; preds = %22
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @CMDF_ROUND_UP, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %64 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %70
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 33
  %80 = sdiv i32 %79, 1000
  %81 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %82 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 33
  %87 = srem i32 %86, 1000
  store i32 %87, i32* %8, align 4
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %75
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 33
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %100 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %95
  br label %122

104:                                              ; preds = %75
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @CMDF_ROUND_UP, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %117 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120, %104
  br label %122

122:                                              ; preds = %121, %103
  br label %123

123:                                              ; preds = %122, %70
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %176

128:                                              ; preds = %123
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 33
  %133 = sdiv i32 %132, 1000
  %134 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %135 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 33
  %140 = srem i32 %139, 1000
  store i32 %140, i32* %8, align 4
  %141 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %128
  %149 = load i32, i32* %8, align 4
  %150 = icmp sgt i32 %149, 33
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %153 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %151, %148
  br label %175

157:                                              ; preds = %128
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @CMDF_ROUND_UP, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %157
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.me4000_private*, %struct.me4000_private** %7, align 8
  %170 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %168, %165
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174, %156
  br label %176

176:                                              ; preds = %175, %123
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
