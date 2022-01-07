; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getedid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getedid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_ktask = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.fb_info = type { %struct.TYPE_8__, %struct.uvesafb_par* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.uvesafb_par = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@noedid = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"VBIOS/hardware supports both DDC1 and DDC2 transfers\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"VBIOS/hardware supports DDC2 transfers\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"VBIOS/hardware supports DDC1 transfers\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"VBIOS/hardware doesn't support DDC transfers\0A\00", align 1
@TF_BUF_RET = common dso_local global i32 0, align 4
@TF_BUF_ESDI = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvesafb_ktask*, %struct.fb_info*)* @uvesafb_vbe_getedid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_vbe_getedid(%struct.uvesafb_ktask* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvesafb_ktask*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.uvesafb_par*, align 8
  %7 = alloca i32, align 4
  store %struct.uvesafb_ktask* %0, %struct.uvesafb_ktask** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.uvesafb_par*, %struct.uvesafb_par** %9, align 8
  store %struct.uvesafb_par* %10, %struct.uvesafb_par** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* @noedid, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %15 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 768
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %186

22:                                               ; preds = %13
  %23 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %24 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 20245, i32* %26, align 8
  %27 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %28 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %32 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %36 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %39 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %42 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %44 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp ne i32 %48, 79
  br i1 %49, label %53, label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %22
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %186

56:                                               ; preds = %50
  %57 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %58 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %92

66:                                               ; preds = %56
  %67 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %68 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %91

76:                                               ; preds = %66
  %77 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %78 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %90

86:                                               ; preds = %76
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %186

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91, %64
  %93 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %94 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 20245, i32* %96, align 8
  %97 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %98 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %102 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %106 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @TF_BUF_RET, align 4
  %110 = load i32, i32* @TF_BUF_ESDI, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %113 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load i64, i64* @EDID_LENGTH, align 8
  %116 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %117 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* @EDID_LENGTH, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i32 @kzalloc(i64 %119, i32 %120)
  %122 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %123 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %125 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %92
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %186

131:                                              ; preds = %92
  %132 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %133 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %135 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 79
  br i1 %140, label %141, label %177

141:                                              ; preds = %131
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %177, label %144

144:                                              ; preds = %141
  %145 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %146 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 0
  %150 = call i32 @fb_edid_to_monspecs(i32 %147, %struct.TYPE_8__* %149)
  %151 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %144
  %157 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %156
  %163 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %170 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 300000000, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  %173 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %156, %144
  br label %180

177:                                              ; preds = %141, %131
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %177, %176
  %181 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %182 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @kfree(i32 %183)
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %180, %128, %86, %53, %19
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @fb_edid_to_monspecs(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
