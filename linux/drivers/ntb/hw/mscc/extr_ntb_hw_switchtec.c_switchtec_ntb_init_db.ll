; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"dbs: shift %d/%d, mask %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*)* @switchtec_ntb_init_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_init_db(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca %struct.switchtec_ntb*, align 8
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %2, align 8
  %3 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %4 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %6 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %5, i32 0, i32 7
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %9 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %8, i32 0, i32 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %14 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %16 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %18 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %21 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  br label %45

22:                                               ; preds = %1
  %23 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %24 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %27 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %32 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %34 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %33, i32 0, i32 2
  store i32 32, i32* %34, align 8
  %35 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %36 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %35, i32 0, i32 3
  store i32 268435455, i32* %36, align 4
  br label %44

37:                                               ; preds = %22
  %38 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %39 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %38, i32 0, i32 1
  store i32 32, i32* %39, align 4
  %40 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %41 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %43 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %42, i32 0, i32 3
  store i32 268435455, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %12
  %46 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %47 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, -1
  %50 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %51 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %50, i32 0, i32 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = call i32 @iowrite64(i32 %49, i32* %53)
  %55 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %56 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %59 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %57, %60
  %62 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %63 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %62, i32 0, i32 7
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @iowrite64(i32 %61, i32* %65)
  %67 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %68 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %67, i32 0, i32 6
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %72 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %75 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %78 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  ret void
}

declare dso_local i32 @iowrite64(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
