; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_decode_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_decode_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_cfg_result = type { i32, i64, i32, i32, i32 }
%struct.ctl_pkg = type { %struct.cfg_error_pkg* }
%struct.cfg_error_pkg = type { i64, i32, i32, i32, i32, i32 }

@TB_CFG_PKG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pkg->zero1 is %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_cfg_result*, %struct.ctl_pkg*)* @decode_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_error(%struct.tb_cfg_result* noalias sret %0, %struct.ctl_pkg* %1) #0 {
  %3 = alloca %struct.ctl_pkg*, align 8
  %4 = alloca %struct.cfg_error_pkg*, align 8
  store %struct.ctl_pkg* %1, %struct.ctl_pkg** %3, align 8
  %5 = load %struct.ctl_pkg*, %struct.ctl_pkg** %3, align 8
  %6 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %5, i32 0, i32 0
  %7 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %6, align 8
  store %struct.cfg_error_pkg* %7, %struct.cfg_error_pkg** %4, align 8
  %8 = bitcast %struct.tb_cfg_result* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %10 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %9, i32 0, i32 5
  %11 = call i32 @tb_cfg_get_route(i32* %10)
  %12 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.ctl_pkg*, %struct.ctl_pkg** %3, align 8
  %15 = load i32, i32* @TB_CFG_PKG_ERROR, align 4
  %16 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %17 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %16, i32 0, i32 5
  %18 = call i32 @tb_cfg_get_route(i32* %17)
  %19 = call i32 @check_header(%struct.ctl_pkg* %14, i32 32, i32 %15, i32 %18)
  %20 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %27 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %30 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WARN(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %34 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %37 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WARN(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %41 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %44 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WARN(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %49 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %53 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %0, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tb_cfg_get_route(i32*) #2

declare dso_local i32 @check_header(%struct.ctl_pkg*, i32, i32, i32) #2

declare dso_local i32 @WARN(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
