; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_use_internal_queue_6xxx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_use_internal_queue_6xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_cmd*)* @use_internal_queue_6xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_internal_queue_6xxx(%struct.comedi_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_cmd* %0, %struct.comedi_cmd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %74, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %5
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CR_CHAN(i32 %20)
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @CR_CHAN(i32 %28)
  %30 = add nsw i64 %29, 1
  %31 = icmp ne i64 %21, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %78

33:                                               ; preds = %12
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @CR_RANGE(i32 %41)
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @CR_RANGE(i32 %49)
  %51 = icmp ne i64 %42, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %78

53:                                               ; preds = %33
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @CR_AREF(i32 %61)
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @CR_AREF(i32 %69)
  %71 = icmp ne i64 %62, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %78

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %5

77:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %72, %52, %32
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
