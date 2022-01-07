; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_dp_init_video_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_dp_init_video_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TB_PATH_NONE = common dso_local global i8* null, align 8
@TB_PORT_NFC_CREDITS_MASK = common dso_local global i32 0, align 4
@TB_PORT_MAX_CREDITS_MASK = common dso_local global i32 0, align 4
@TB_PORT_MAX_CREDITS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_path*, i32)* @tb_dp_init_video_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_dp_init_video_path(%struct.tb_path* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_path* %0, %struct.tb_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %8 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %7, i32 0, i32 7
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** @TB_PATH_NONE, align 8
  %17 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %18 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @TB_PATH_NONE, align 8
  %20 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %21 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @TB_PATH_NONE, align 8
  %23 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %24 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @TB_PATH_NONE, align 8
  %26 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %27 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %29 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %31 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TB_PORT_NFC_CREDITS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %39 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @TB_PORT_MAX_CREDITS_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @TB_PORT_MAX_CREDITS_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 2
  %48 = call i32 @min(i32 %47, i32 12)
  %49 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %50 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
