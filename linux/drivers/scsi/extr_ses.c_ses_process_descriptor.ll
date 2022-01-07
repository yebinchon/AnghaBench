; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_process_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_process_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { i32, %struct.ses_component* }
%struct.ses_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_component*, i8*)* @ses_process_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_process_descriptor(%struct.enclosure_component* %0, i8* %1) #0 {
  %3 = alloca %struct.enclosure_component*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ses_component*, align 8
  %11 = alloca i8*, align 8
  store %struct.enclosure_component* %0, %struct.enclosure_component** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 16
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 128
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %27 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %28 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %27, i32 0, i32 1
  %29 = load %struct.ses_component*, %struct.ses_component** %28, align 8
  store %struct.ses_component* %29, %struct.ses_component** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %116

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %108 [
    i32 129, label %35
    i32 128, label %46
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %35
  br label %109

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  store i8* %57, i8** %11, align 8
  br label %61

58:                                               ; preds = %46
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %58, %49
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 12
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 56
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 13
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 48
  %72 = or i32 %66, %71
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 14
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 40
  %78 = or i32 %72, %77
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 15
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 32
  %84 = or i32 %78, %83
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 16
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 24
  %90 = or i32 %84, %89
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 17
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 16
  %96 = or i32 %90, %95
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 18
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %100, 8
  %102 = or i32 %96, %101
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 19
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %102, %106
  store i32 %107, i32* %8, align 4
  br label %109

108:                                              ; preds = %33
  br label %109

109:                                              ; preds = %108, %61, %45
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %112 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.ses_component*, %struct.ses_component** %10, align 8
  %115 = getelementptr inbounds %struct.ses_component, %struct.ses_component* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
