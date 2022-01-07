; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_tmpl.c_qla27xx_driver_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_tmpl.c_qla27xx_driver_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla27xx_fwdt_template = type { i32* }

@qla2x00_version_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%hhu.%hhu.%hhu.%hhu.%hhu.%hhu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla27xx_fwdt_template*)* @qla27xx_driver_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla27xx_driver_info(%struct.qla27xx_fwdt_template* %0) #0 {
  %2 = alloca %struct.qla27xx_fwdt_template*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.qla27xx_fwdt_template* %0, %struct.qla27xx_fwdt_template** %2, align 8
  %4 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 24, i1 false)
  %5 = load i32, i32* @qla2x00_version_str, align 4
  %6 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = call i32 @sscanf(i32 %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %9, i32* %11, i32* %13, i32* %15, i32* %17)
  %19 = icmp ne i32 %18, 6
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 24
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 16
  %28 = or i32 %24, %27
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %28, %31
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = or i32 %32, %34
  %36 = load %struct.qla27xx_fwdt_template*, %struct.qla27xx_fwdt_template** %2, align 8
  %37 = getelementptr inbounds %struct.qla27xx_fwdt_template, %struct.qla27xx_fwdt_template* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  %44 = load i32, i32* %43, align 16
  %45 = or i32 %42, %44
  %46 = load %struct.qla27xx_fwdt_template*, %struct.qla27xx_fwdt_template** %2, align 8
  %47 = getelementptr inbounds %struct.qla27xx_fwdt_template, %struct.qla27xx_fwdt_template* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.qla27xx_fwdt_template*, %struct.qla27xx_fwdt_template** %2, align 8
  %51 = getelementptr inbounds %struct.qla27xx_fwdt_template, %struct.qla27xx_fwdt_template* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 305419896, i32* %53, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
