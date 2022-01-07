; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_cfg_result = type { i32, i32, i64, i32 }
%struct.ctl_pkg = type { %struct.TYPE_2__, %struct.tb_cfg_header* }
%struct.TYPE_2__ = type { i64 }
%struct.tb_cfg_header = type { i32 }

@TB_CFG_PKG_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_cfg_result*, %struct.ctl_pkg*, i32, i32, i32)* @parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_header(%struct.tb_cfg_result* noalias sret %0, %struct.ctl_pkg* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ctl_pkg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tb_cfg_header*, align 8
  %11 = alloca %struct.tb_cfg_result, align 8
  store %struct.ctl_pkg* %1, %struct.ctl_pkg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %12 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %13 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %12, i32 0, i32 1
  %14 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %13, align 8
  store %struct.tb_cfg_header* %14, %struct.tb_cfg_header** %10, align 8
  %15 = bitcast %struct.tb_cfg_result* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %17 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TB_CFG_PKG_ERROR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  call void @decode_error(%struct.tb_cfg_result* sret %0, %struct.ctl_pkg* %23)
  br label %37

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %11, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.tb_cfg_header*, %struct.tb_cfg_header** %10, align 8
  %27 = call i32 @tb_cfg_get_route(%struct.tb_cfg_header* %26)
  %28 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ctl_pkg*, %struct.ctl_pkg** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @check_header(%struct.ctl_pkg* %29, i32 %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = bitcast %struct.tb_cfg_result* %0 to i8*
  %36 = bitcast %struct.tb_cfg_result* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  br label %37

37:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @decode_error(%struct.tb_cfg_result* sret, %struct.ctl_pkg*) #2

declare dso_local i32 @tb_cfg_get_route(%struct.tb_cfg_header*) #2

declare dso_local i32 @check_header(%struct.ctl_pkg*, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
