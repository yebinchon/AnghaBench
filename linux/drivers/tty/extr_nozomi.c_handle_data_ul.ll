; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_handle_data_ul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_handle_data_ul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MDM_UL1 = common dso_local global i32 0, align 4
@MDM_UL = common dso_local global i32 0, align 4
@MDM_UL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"port out of sync!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nozomi*, i32, i32)* @handle_data_ul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_ul(%struct.nozomi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nozomi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.nozomi* %0, %struct.nozomi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %10 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %119

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MDM_UL1, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %119

24:                                               ; preds = %19
  %25 = load i32, i32* @MDM_UL, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %28 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %32 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %35 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writew(i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %40 = call i64 @send_data(i32 %38, %struct.nozomi* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %24
  %43 = load i32, i32* @MDM_UL1, align 4
  %44 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %45 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @writew(i32 %43, i32 %46)
  %48 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %49 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MDM_UL, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %54 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %56 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %59 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writew(i32 %57, i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %42, %24
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @MDM_UL2, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %68
  %74 = load i32, i32* @MDM_UL, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %77 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %81 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %84 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @writew(i32 %82, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %89 = call i64 @send_data(i32 %87, %struct.nozomi* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %73
  %92 = load i32, i32* @MDM_UL2, align 4
  %93 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %94 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @writew(i32 %92, i32 %95)
  %97 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %98 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MDM_UL, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %103 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %105 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %108 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @writew(i32 %106, i32 %109)
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %91, %73
  br label %118

118:                                              ; preds = %117, %68
  br label %237

119:                                              ; preds = %19, %3
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %223

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @MDM_UL2, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %223

128:                                              ; preds = %123
  %129 = load i32, i32* @MDM_UL, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %132 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %136 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %139 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @writew(i32 %137, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %144 = call i64 @send_data(i32 %142, %struct.nozomi* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %128
  %147 = load i32, i32* @MDM_UL2, align 4
  %148 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %149 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @writew(i32 %147, i32 %150)
  %152 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %153 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MDM_UL, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %158 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %160 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %163 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @writew(i32 %161, i32 %164)
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load i32*, i32** %8, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %146, %128
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @MDM_UL1, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %222

177:                                              ; preds = %172
  %178 = load i32, i32* @MDM_UL, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %181 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %185 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %188 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @writew(i32 %186, i32 %189)
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %193 = call i64 @send_data(i32 %191, %struct.nozomi* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %177
  %196 = load i32, i32* @MDM_UL1, align 4
  %197 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %198 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @writew(i32 %196, i32 %199)
  %201 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %202 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MDM_UL, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %207 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %209 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %212 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @writew(i32 %210, i32 %213)
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = load i32*, i32** %8, align 8
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %195, %177
  br label %222

222:                                              ; preds = %221, %172
  br label %236

223:                                              ; preds = %123, %119
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @MDM_UL, align 4
  %226 = and i32 %224, %225
  %227 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %228 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @writew(i32 %226, i32 %229)
  %231 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %232 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %231, i32 0, i32 1
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = call i32 @dev_err(i32* %234, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %238

236:                                              ; preds = %222
  br label %237

237:                                              ; preds = %236, %118
  store i32 1, i32* %4, align 4
  br label %238

238:                                              ; preds = %237, %223
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i64 @send_data(i32, %struct.nozomi*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
