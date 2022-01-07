; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_Tekram_setup_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_Tekram_setup_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_tcb = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.Tekram_target* }
%struct.Tekram_target = type { i32, i32 }

@TEKRAM_TAGGED_COMMANDS = common dso_local global i32 0, align 4
@TEKRAM_DISCONNECT_ENABLE = common dso_local global i32 0, align 4
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@TEKRAM_SYNC_NEGO = common dso_local global i32 0, align 4
@Tekram_sync = common dso_local global i32* null, align 8
@TEKRAM_WIDE_NEGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_tcb*, i32, %struct.TYPE_3__*)* @sym_Tekram_setup_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_Tekram_setup_target(%struct.sym_tcb* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.sym_tcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.Tekram_target*, align 8
  store %struct.sym_tcb* %0, %struct.sym_tcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.Tekram_target*, %struct.Tekram_target** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Tekram_target, %struct.Tekram_target* %10, i64 %12
  store %struct.Tekram_target* %13, %struct.Tekram_target** %7, align 8
  %14 = load %struct.Tekram_target*, %struct.Tekram_target** %7, align 8
  %15 = getelementptr inbounds %struct.Tekram_target, %struct.Tekram_target* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TEKRAM_TAGGED_COMMANDS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 2, %23
  %25 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %26 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.Tekram_target*, %struct.Tekram_target** %7, align 8
  %29 = getelementptr inbounds %struct.Tekram_target, %struct.Tekram_target* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TEKRAM_DISCONNECT_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %36 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %37 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.Tekram_target*, %struct.Tekram_target** %7, align 8
  %42 = getelementptr inbounds %struct.Tekram_target, %struct.Tekram_target* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TEKRAM_SYNC_NEGO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32*, i32** @Tekram_sync, align 8
  %49 = load %struct.Tekram_target*, %struct.Tekram_target** %7, align 8
  %50 = getelementptr inbounds %struct.Tekram_target, %struct.Tekram_target* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %57 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %40
  %59 = load %struct.Tekram_target*, %struct.Tekram_target** %7, align 8
  %60 = getelementptr inbounds %struct.Tekram_target, %struct.Tekram_target* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TEKRAM_WIDE_NEGO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %68 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
