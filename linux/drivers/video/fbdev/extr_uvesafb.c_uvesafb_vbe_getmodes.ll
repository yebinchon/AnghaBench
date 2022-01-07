; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getmodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getmodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_ktask = type { %struct.vbe_mode_ib*, %struct.TYPE_6__ }
%struct.vbe_mode_ib = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.uvesafb_par = type { i64, %struct.vbe_mode_ib*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TF_BUF_RET = common dso_local global i32 0, align 4
@TF_BUF_ESDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Getting mode info block for mode 0x%x failed (eax=0x%x, err=%d)\0A\00", align 1
@VBE_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvesafb_ktask*, %struct.uvesafb_par*)* @uvesafb_vbe_getmodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_vbe_getmodes(%struct.uvesafb_ktask* %0, %struct.uvesafb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvesafb_ktask*, align 8
  %5 = alloca %struct.uvesafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vbe_mode_ib*, align 8
  store %struct.uvesafb_ktask* %0, %struct.uvesafb_ktask** %4, align 8
  store %struct.uvesafb_par* %1, %struct.uvesafb_par** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %11 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %13 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %12, i32 0, i32 2
  %14 = bitcast %struct.TYPE_4__* %13 to i32*
  %15 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %16 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %25, %2
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 65535
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %27 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %34 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.vbe_mode_ib* @kcalloc(i64 %35, i32 28, i32 %36)
  %38 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %39 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %38, i32 0, i32 1
  store %struct.vbe_mode_ib* %37, %struct.vbe_mode_ib** %39, align 8
  %40 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %41 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %40, i32 0, i32 1
  %42 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %41, align 8
  %43 = icmp ne %struct.vbe_mode_ib* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %195

47:                                               ; preds = %32
  %48 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %49 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %48, i32 0, i32 2
  %50 = bitcast %struct.TYPE_4__* %49 to i32*
  %51 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %52 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  store i32* %56, i32** %8, align 8
  br label %57

57:                                               ; preds = %185, %104, %47
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 65535
  br i1 %60, label %61, label %186

61:                                               ; preds = %57
  %62 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %63 = call i32 @uvesafb_reset(%struct.uvesafb_ktask* %62)
  %64 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %65 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 20225, i32* %67, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %72 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* @TF_BUF_RET, align 4
  %76 = load i32, i32* @TF_BUF_ESDI, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %79 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %82 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 28, i32* %83, align 4
  %84 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %85 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %84, i32 0, i32 1
  %86 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %86, i64 %88
  %90 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %91 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %90, i32 0, i32 0
  store %struct.vbe_mode_ib* %89, %struct.vbe_mode_ib** %91, align 8
  %92 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %93 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %61
  %97 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %98 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp ne i32 %102, 79
  br i1 %103, label %104, label %121

104:                                              ; preds = %96, %61
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %108 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %106, i64 %112, i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %8, align 8
  %117 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %118 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %118, align 8
  br label %57

121:                                              ; preds = %96
  %122 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %123 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %122, i32 0, i32 0
  %124 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %123, align 8
  store %struct.vbe_mode_ib* %124, %struct.vbe_mode_ib** %9, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %128 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %130 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @VBE_MODE_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @VBE_MODE_MASK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %121
  %137 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %138 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 8
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %149

144:                                              ; preds = %136, %121
  %145 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %146 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %8, align 8
  %152 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %153 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %156 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %154, %157
  %159 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %160 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %164 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %166 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %149
  %170 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %171 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 24
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %176 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %185

179:                                              ; preds = %174, %149
  %180 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %181 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %9, align 8
  %184 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %179, %174, %169
  br label %57

186:                                              ; preds = %57
  %187 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %188 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %195

192:                                              ; preds = %186
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %192, %191, %44
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.vbe_mode_ib* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @uvesafb_reset(%struct.uvesafb_ktask*) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
