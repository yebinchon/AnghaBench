; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_get_phy_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_get_phy_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }
%struct.vnt_phy_field = type { i32, i32, i8* }

@PK_TYPE_11A = common dso_local global i32 0, align 4
@PK_TYPE_11B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_get_phy_field(%struct.vnt_private* %0, i32 %1, i32 %2, i32 %3, %struct.vnt_phy_field* %4) #0 {
  %6 = alloca %struct.vnt_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnt_phy_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.vnt_phy_field* %4, %struct.vnt_phy_field** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 8
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %176 [
    i32 136, label %22
    i32 134, label %26
    i32 130, label %38
    i32 139, label %61
    i32 129, label %88
    i32 128, label %99
    i32 138, label %110
    i32 137, label %121
    i32 135, label %132
    i32 133, label %143
    i32 132, label %154
    i32 131, label %165
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %25 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %187

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %33 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %32, i32 0, i32 0
  store i32 9, i32* %33, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %36 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %187

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 10
  %41 = sdiv i32 %40, 55
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %42, 55
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %15, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %56 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %55, i32 0, i32 0
  store i32 10, i32* %56, align 8
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %59 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  br label %187

61:                                               ; preds = %5
  %62 = load i32, i32* %11, align 4
  %63 = sdiv i32 %62, 11
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %64, 11
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp sle i32 %74, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %83 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %82, i32 0, i32 0
  store i32 11, i32* %83, align 8
  br label %87

84:                                               ; preds = %78
  %85 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %86 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %85, i32 0, i32 0
  store i32 3, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %187

88:                                               ; preds = %5
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @PK_TYPE_11A, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %94 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %93, i32 0, i32 0
  store i32 155, i32* %94, align 8
  br label %98

95:                                               ; preds = %88
  %96 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %97 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %96, i32 0, i32 0
  store i32 139, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  br label %187

99:                                               ; preds = %5
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @PK_TYPE_11A, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %105 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %104, i32 0, i32 0
  store i32 159, i32* %105, align 8
  br label %109

106:                                              ; preds = %99
  %107 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %108 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %107, i32 0, i32 0
  store i32 143, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %187

110:                                              ; preds = %5
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @PK_TYPE_11A, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %116 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %115, i32 0, i32 0
  store i32 154, i32* %116, align 8
  br label %120

117:                                              ; preds = %110
  %118 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %119 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %118, i32 0, i32 0
  store i32 138, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %187

121:                                              ; preds = %5
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @PK_TYPE_11A, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %127 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %126, i32 0, i32 0
  store i32 158, i32* %127, align 8
  br label %131

128:                                              ; preds = %121
  %129 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %130 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %129, i32 0, i32 0
  store i32 142, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  br label %187

132:                                              ; preds = %5
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @PK_TYPE_11A, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %138 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %137, i32 0, i32 0
  store i32 153, i32* %138, align 8
  br label %142

139:                                              ; preds = %132
  %140 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %141 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %140, i32 0, i32 0
  store i32 137, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  br label %187

143:                                              ; preds = %5
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @PK_TYPE_11A, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %149 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %148, i32 0, i32 0
  store i32 157, i32* %149, align 8
  br label %153

150:                                              ; preds = %143
  %151 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %152 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %151, i32 0, i32 0
  store i32 141, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  br label %187

154:                                              ; preds = %5
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @PK_TYPE_11A, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %160 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %159, i32 0, i32 0
  store i32 152, i32* %160, align 8
  br label %164

161:                                              ; preds = %154
  %162 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %163 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %162, i32 0, i32 0
  store i32 136, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %158
  br label %187

165:                                              ; preds = %5
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @PK_TYPE_11A, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %171 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %170, i32 0, i32 0
  store i32 156, i32* %171, align 8
  br label %175

172:                                              ; preds = %165
  %173 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %174 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %173, i32 0, i32 0
  store i32 140, i32* %174, align 8
  br label %175

175:                                              ; preds = %172, %169
  br label %187

176:                                              ; preds = %5
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @PK_TYPE_11A, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %182 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %181, i32 0, i32 0
  store i32 156, i32* %182, align 8
  br label %186

183:                                              ; preds = %176
  %184 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %185 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %184, i32 0, i32 0
  store i32 140, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %175, %164, %153, %142, %131, %120, %109, %98, %87, %60, %37, %22
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @PK_TYPE_11B, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %187
  %192 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %193 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %192, i32 0, i32 1
  store i32 0, i32* %193, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %198 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, 128
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %196, %191
  %202 = load i32, i32* %12, align 4
  %203 = call i8* @cpu_to_le16(i32 %202)
  %204 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %205 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  br label %213

206:                                              ; preds = %187
  %207 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %208 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %207, i32 0, i32 1
  store i32 0, i32* %208, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i8* @cpu_to_le16(i32 %209)
  %211 = load %struct.vnt_phy_field*, %struct.vnt_phy_field** %10, align 8
  %212 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %206, %201
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
