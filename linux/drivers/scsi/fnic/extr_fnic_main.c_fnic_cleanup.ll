; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32 }

@io_completions = common dso_local global i32 0, align 4
@fnic_free_wq_buf = common dso_local global i32 0, align 4
@fnic_free_rq_buf = common dso_local global i32 0, align 4
@fnic_wq_copy_cleanup_handler = common dso_local global i32 0, align 4
@FNIC_SGL_NUM_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*)* @fnic_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_cleanup(%struct.fnic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  %6 = load %struct.fnic*, %struct.fnic** %3, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @vnic_dev_disable(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.fnic*, %struct.fnic** %3, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.fnic*, %struct.fnic** %3, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @vnic_intr_mask(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.fnic*, %struct.fnic** %3, align 8
  %31 = getelementptr inbounds %struct.fnic, %struct.fnic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.fnic*, %struct.fnic** %3, align 8
  %36 = getelementptr inbounds %struct.fnic, %struct.fnic* %35, i32 0, i32 10
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @vnic_rq_disable(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %218

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %28

50:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.fnic*, %struct.fnic** %3, align 8
  %54 = getelementptr inbounds %struct.fnic, %struct.fnic* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.fnic*, %struct.fnic** %3, align 8
  %59 = getelementptr inbounds %struct.fnic, %struct.fnic* %58, i32 0, i32 11
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @vnic_wq_disable(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %218

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %51

73:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.fnic*, %struct.fnic** %3, align 8
  %77 = getelementptr inbounds %struct.fnic, %struct.fnic* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.fnic*, %struct.fnic** %3, align 8
  %82 = getelementptr inbounds %struct.fnic, %struct.fnic* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @vnic_wq_copy_disable(i32* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %218

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %74

96:                                               ; preds = %74
  %97 = load %struct.fnic*, %struct.fnic** %3, align 8
  %98 = load i32, i32* @io_completions, align 4
  %99 = call i32 @fnic_wq_copy_cmpl_handler(%struct.fnic* %97, i32 %98)
  %100 = load %struct.fnic*, %struct.fnic** %3, align 8
  %101 = call i32 @fnic_wq_cmpl_handler(%struct.fnic* %100, i32 -1)
  %102 = load %struct.fnic*, %struct.fnic** %3, align 8
  %103 = call i32 @fnic_rq_cmpl_handler(%struct.fnic* %102, i32 -1)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %119, %96
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.fnic*, %struct.fnic** %3, align 8
  %107 = getelementptr inbounds %struct.fnic, %struct.fnic* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.fnic*, %struct.fnic** %3, align 8
  %112 = getelementptr inbounds %struct.fnic, %struct.fnic* %111, i32 0, i32 11
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* @fnic_free_wq_buf, align 4
  %118 = call i32 @vnic_wq_clean(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %4, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %104

122:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %138, %122
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.fnic*, %struct.fnic** %3, align 8
  %126 = getelementptr inbounds %struct.fnic, %struct.fnic* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.fnic*, %struct.fnic** %3, align 8
  %131 = getelementptr inbounds %struct.fnic, %struct.fnic* %130, i32 0, i32 10
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* @fnic_free_rq_buf, align 4
  %137 = call i32 @vnic_rq_clean(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %4, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %123

141:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %157, %141
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.fnic*, %struct.fnic** %3, align 8
  %145 = getelementptr inbounds %struct.fnic, %struct.fnic* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ult i32 %143, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %142
  %149 = load %struct.fnic*, %struct.fnic** %3, align 8
  %150 = getelementptr inbounds %struct.fnic, %struct.fnic* %149, i32 0, i32 9
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* @fnic_wq_copy_cleanup_handler, align 4
  %156 = call i32 @vnic_wq_copy_clean(i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %4, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %142

160:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %175, %160
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.fnic*, %struct.fnic** %3, align 8
  %164 = getelementptr inbounds %struct.fnic, %struct.fnic* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = icmp ult i32 %162, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %161
  %168 = load %struct.fnic*, %struct.fnic** %3, align 8
  %169 = getelementptr inbounds %struct.fnic, %struct.fnic* %168, i32 0, i32 8
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @vnic_cq_clean(i32* %173)
  br label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %161

178:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %193, %178
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.fnic*, %struct.fnic** %3, align 8
  %182 = getelementptr inbounds %struct.fnic, %struct.fnic* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ult i32 %180, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load %struct.fnic*, %struct.fnic** %3, align 8
  %187 = getelementptr inbounds %struct.fnic, %struct.fnic* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = call i32 @vnic_intr_clean(i32* %191)
  br label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %4, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %179

196:                                              ; preds = %179
  %197 = load %struct.fnic*, %struct.fnic** %3, align 8
  %198 = getelementptr inbounds %struct.fnic, %struct.fnic* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @mempool_destroy(i32 %199)
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %214, %196
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @FNIC_SGL_NUM_CACHES, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load %struct.fnic*, %struct.fnic** %3, align 8
  %207 = getelementptr inbounds %struct.fnic, %struct.fnic* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @mempool_destroy(i32 %212)
  br label %214

214:                                              ; preds = %205
  %215 = load i32, i32* %4, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %201

217:                                              ; preds = %201
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %90, %67, %44
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @vnic_dev_disable(i32) #1

declare dso_local i32 @vnic_intr_mask(i32*) #1

declare dso_local i32 @vnic_rq_disable(i32*) #1

declare dso_local i32 @vnic_wq_disable(i32*) #1

declare dso_local i32 @vnic_wq_copy_disable(i32*) #1

declare dso_local i32 @fnic_wq_copy_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @fnic_wq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @fnic_rq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @vnic_wq_clean(i32*, i32) #1

declare dso_local i32 @vnic_rq_clean(i32*, i32) #1

declare dso_local i32 @vnic_wq_copy_clean(i32*, i32) #1

declare dso_local i32 @vnic_cq_clean(i32*) #1

declare dso_local i32 @vnic_intr_clean(i32*) #1

declare dso_local i32 @mempool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
