; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_b0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_b0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.TYPE_4__*, %struct.se_device* }
%struct.TYPE_4__ = type { i32 }
%struct.se_device = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i8 (%struct.se_device*)*, i32 (%struct.se_device*)*, i32 (%struct.se_device*)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i8*)* @spc_emulate_evpd_b0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_evpd_b0(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 1
  %12 = load %struct.se_device*, %struct.se_device** %11, align 8
  store %struct.se_device* %12, %struct.se_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.se_device*, %struct.se_device** %5, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.se_device*, %struct.se_device** %5, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.se_device*, %struct.se_device** %5, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8 (%struct.se_device*)*, i8 (%struct.se_device*)** %29, align 8
  %31 = load %struct.se_device*, %struct.se_device** %5, align 8
  %32 = call zeroext i8 %30(%struct.se_device* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 60, i32 16
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8 1, i8* %43, align 1
  %44 = load %struct.se_device*, %struct.se_device** %5, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 5
  store i8 1, i8* %51, align 1
  br label %52

52:                                               ; preds = %49, %25
  %53 = load %struct.se_device*, %struct.se_device** %5, align 8
  %54 = getelementptr inbounds %struct.se_device, %struct.se_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %56, align 8
  %58 = icmp ne i32 (%struct.se_device*)* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %52
  %60 = load %struct.se_device*, %struct.se_device** %5, align 8
  %61 = getelementptr inbounds %struct.se_device, %struct.se_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %63, align 8
  %65 = load %struct.se_device*, %struct.se_device** %5, align 8
  %66 = call i32 %64(%struct.se_device* %65)
  store i32 %66, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.se_device*, %struct.se_device** %5, align 8
  %71 = getelementptr inbounds %struct.se_device, %struct.se_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %69, %73
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 6
  %77 = call i32 @put_unaligned_be16(i32 %74, i8* %76)
  br label %82

78:                                               ; preds = %59, %52
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 6
  %81 = call i32 @put_unaligned_be16(i32 1, i8* %80)
  br label %82

82:                                               ; preds = %78, %68
  %83 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.se_device*, %struct.se_device** %5, align 8
  %98 = getelementptr inbounds %struct.se_device, %struct.se_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sdiv i32 %96, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %89, %82
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.se_device*, %struct.se_device** %5, align 8
  %105 = getelementptr inbounds %struct.se_device, %struct.se_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @min_not_zero(i32 %103, i32 %107)
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = call i32 @put_unaligned_be32(i32 %108, i8* %110)
  %112 = load %struct.se_device*, %struct.se_device** %5, align 8
  %113 = getelementptr inbounds %struct.se_device, %struct.se_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %115, align 8
  %117 = icmp ne i32 (%struct.se_device*)* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %102
  %119 = load %struct.se_device*, %struct.se_device** %5, align 8
  %120 = getelementptr inbounds %struct.se_device, %struct.se_device* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %122, align 8
  %124 = load %struct.se_device*, %struct.se_device** %5, align 8
  %125 = call i32 %123(%struct.se_device* %124)
  store i32 %125, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.se_device*, %struct.se_device** %5, align 8
  %130 = getelementptr inbounds %struct.se_device, %struct.se_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %128, %132
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 12
  %136 = call i32 @put_unaligned_be32(i32 %133, i8* %135)
  br label %145

137:                                              ; preds = %118, %102
  %138 = load %struct.se_device*, %struct.se_device** %5, align 8
  %139 = getelementptr inbounds %struct.se_device, %struct.se_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 12
  %144 = call i32 @put_unaligned_be32(i32 %141, i8* %143)
  br label %145

145:                                              ; preds = %137, %127
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %191

149:                                              ; preds = %145
  %150 = load %struct.se_device*, %struct.se_device** %5, align 8
  %151 = getelementptr inbounds %struct.se_device, %struct.se_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 20
  %156 = call i32 @put_unaligned_be32(i32 %153, i8* %155)
  %157 = load %struct.se_device*, %struct.se_device** %5, align 8
  %158 = getelementptr inbounds %struct.se_device, %struct.se_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 24
  %163 = call i32 @put_unaligned_be32(i32 %160, i8* %162)
  %164 = load %struct.se_device*, %struct.se_device** %5, align 8
  %165 = getelementptr inbounds %struct.se_device, %struct.se_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 28
  %170 = call i32 @put_unaligned_be32(i32 %167, i8* %169)
  %171 = load %struct.se_device*, %struct.se_device** %5, align 8
  %172 = getelementptr inbounds %struct.se_device, %struct.se_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 32
  %177 = call i32 @put_unaligned_be32(i32 %174, i8* %176)
  %178 = load %struct.se_device*, %struct.se_device** %5, align 8
  %179 = getelementptr inbounds %struct.se_device, %struct.se_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %149
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 32
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %187, 128
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 1
  br label %190

190:                                              ; preds = %183, %149
  br label %191

191:                                              ; preds = %190, %148
  %192 = load %struct.se_device*, %struct.se_device** %5, align 8
  %193 = getelementptr inbounds %struct.se_device, %struct.se_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load i8*, i8** %4, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 36
  %198 = call i32 @put_unaligned_be64(i32 %195, i8* %197)
  ret i32 0
}

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
