; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_setup_color_conv_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_setup_color_conv_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_conv_coef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@__const.dispc_setup_color_conv_coef.ctbl_bt601_5_ovl = private unnamed_addr constant %struct.color_conv_coef { i32 298, i32 409, i32 0, i32 298, i32 -208, i32 -100, i32 298, i32 0, i32 517, i32 0 }, align 4
@__const.dispc_setup_color_conv_coef.ctbl_bt601_5_wb = private unnamed_addr constant %struct.color_conv_coef { i32 66, i32 129, i32 25, i32 112, i32 -94, i32 -18, i32 -38, i32 -74, i32 112, i32 0 }, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_setup_color_conv_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_setup_color_conv_coef() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.color_conv_coef, align 4
  %4 = alloca %struct.color_conv_coef, align 4
  %5 = call i32 (...) @dss_feat_get_num_ovls()
  store i32 %5, i32* %2, align 4
  %6 = bitcast %struct.color_conv_coef* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.color_conv_coef* @__const.dispc_setup_color_conv_coef.ctbl_bt601_5_ovl to i8*), i64 40, i1 false)
  %7 = bitcast %struct.color_conv_coef* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.color_conv_coef* @__const.dispc_setup_color_conv_coef.ctbl_bt601_5_wb to i8*), i64 40, i1 false)
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %15, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @dispc_ovl_write_color_conv_coef(i32 %13, %struct.color_conv_coef* %3)
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @OMAP_DSS_WB, align 4
  %25 = call i32 @dispc_ovl_write_color_conv_coef(i32 %24, %struct.color_conv_coef* %4)
  br label %26

26:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dispc_ovl_write_color_conv_coef(i32, %struct.color_conv_coef*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
