; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_cfg_result = type { i32 }
%struct.tb_regs_switch_header = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"resetting switch at %llx\0A\00", align 1
@TB_CFG_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_switch_reset(%struct.tb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_cfg_result, align 4
  %7 = alloca %struct.tb_regs_switch_header, align 4
  %8 = alloca %struct.tb_cfg_result, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 32
  %12 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 %11, i32* %9, align 4
  %13 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  store i32 %14, i32* %13, align 4
  %16 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 4
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tb_regs_switch_header, %struct.tb_regs_switch_header* %7, i32 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = load %struct.tb*, %struct.tb** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @tb_dbg(%struct.tb* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.tb*, %struct.tb** %4, align 8
  %25 = getelementptr inbounds %struct.tb, %struct.tb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %struct.tb_regs_switch_header* %7 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @tb_cfg_write(i32 %26, i32* %28, i32 %29, i32 0, i32 2, i32 2, i32 2)
  %31 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %2
  %39 = load %struct.tb*, %struct.tb** %4, align 8
  %40 = getelementptr inbounds %struct.tb, %struct.tb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TB_CFG_DEFAULT_TIMEOUT, align 4
  %44 = call i32 @tb_cfg_reset(i32 %41, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.tb_cfg_result* %6 to i8*
  %47 = bitcast %struct.tb_cfg_result* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @tb_dbg(%struct.tb*, i8*, i32) #1

declare dso_local i32 @tb_cfg_write(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tb_cfg_reset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
