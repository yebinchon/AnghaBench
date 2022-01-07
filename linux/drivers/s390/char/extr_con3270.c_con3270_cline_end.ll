; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_cline_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_cline_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64* }
%struct.string = type { i32, i32, i32, i64* }

@TO_RA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*)* @con3270_cline_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_cline_end(%struct.con3270* %0) #0 {
  %2 = alloca %struct.con3270*, align 8
  %3 = alloca %struct.string*, align 8
  %4 = alloca i32, align 4
  store %struct.con3270* %0, %struct.con3270** %2, align 8
  %5 = load %struct.con3270*, %struct.con3270** %2, align 8
  %6 = getelementptr inbounds %struct.con3270, %struct.con3270* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.con3270*, %struct.con3270** %2, align 8
  %11 = getelementptr inbounds %struct.con3270, %struct.con3270* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 5
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.con3270*, %struct.con3270** %2, align 8
  %18 = getelementptr inbounds %struct.con3270, %struct.con3270* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.con3270*, %struct.con3270** %2, align 8
  %25 = getelementptr inbounds %struct.con3270, %struct.con3270* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i32 [ %22, %16 ], [ %27, %23 ]
  store i32 %29, i32* %4, align 4
  %30 = load %struct.con3270*, %struct.con3270** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.string* @con3270_alloc_string(%struct.con3270* %30, i32 %31)
  store %struct.string* %32, %struct.string** %3, align 8
  %33 = load %struct.string*, %struct.string** %3, align 8
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.con3270*, %struct.con3270** %2, align 8
  %37 = getelementptr inbounds %struct.con3270, %struct.con3270* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.con3270*, %struct.con3270** %2, align 8
  %42 = getelementptr inbounds %struct.con3270, %struct.con3270* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i64* %35, i32 %40, i32 %45)
  %47 = load %struct.con3270*, %struct.con3270** %2, align 8
  %48 = getelementptr inbounds %struct.con3270, %struct.con3270* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.con3270*, %struct.con3270** %2, align 8
  %53 = getelementptr inbounds %struct.con3270, %struct.con3270* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 5
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %28
  %59 = load i64, i64* @TO_RA, align 8
  %60 = load %struct.string*, %struct.string** %3, align 8
  %61 = getelementptr inbounds %struct.string, %struct.string* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.string*, %struct.string** %3, align 8
  %64 = getelementptr inbounds %struct.string, %struct.string* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %62, i64 %67
  store i64 %59, i64* %68, align 8
  %69 = load %struct.string*, %struct.string** %3, align 8
  %70 = getelementptr inbounds %struct.string, %struct.string* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.string*, %struct.string** %3, align 8
  %73 = getelementptr inbounds %struct.string, %struct.string* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %71, i64 %76
  store i64 0, i64* %77, align 8
  br label %102

78:                                               ; preds = %28
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %4, align 4
  %82 = load %struct.con3270*, %struct.con3270** %2, align 8
  %83 = getelementptr inbounds %struct.con3270, %struct.con3270* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp uge i32 %81, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %79
  %89 = load %struct.con3270*, %struct.con3270** %2, align 8
  %90 = getelementptr inbounds %struct.con3270, %struct.con3270* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 32
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.string*, %struct.string** %3, align 8
  %96 = getelementptr inbounds %struct.string, %struct.string* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %94, i64* %100, align 8
  br label %79

101:                                              ; preds = %79
  br label %102

102:                                              ; preds = %101, %58
  %103 = load %struct.string*, %struct.string** %3, align 8
  %104 = getelementptr inbounds %struct.string, %struct.string* %103, i32 0, i32 2
  %105 = load %struct.con3270*, %struct.con3270** %2, align 8
  %106 = getelementptr inbounds %struct.con3270, %struct.con3270* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = call i32 @list_add(i32* %104, i32* %108)
  %110 = load %struct.con3270*, %struct.con3270** %2, align 8
  %111 = getelementptr inbounds %struct.con3270, %struct.con3270* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = call i32 @list_del_init(i32* %113)
  %115 = load %struct.con3270*, %struct.con3270** %2, align 8
  %116 = getelementptr inbounds %struct.con3270, %struct.con3270* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = call i32 @list_empty(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %102
  %122 = load %struct.string*, %struct.string** %3, align 8
  %123 = getelementptr inbounds %struct.string, %struct.string* %122, i32 0, i32 1
  %124 = load %struct.con3270*, %struct.con3270** %2, align 8
  %125 = getelementptr inbounds %struct.con3270, %struct.con3270* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = call i32 @list_add(i32* %123, i32* %127)
  %129 = load %struct.con3270*, %struct.con3270** %2, align 8
  %130 = getelementptr inbounds %struct.con3270, %struct.con3270* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = call i32 @list_del_init(i32* %132)
  br label %134

134:                                              ; preds = %121, %102
  %135 = load %struct.con3270*, %struct.con3270** %2, align 8
  %136 = getelementptr inbounds %struct.con3270, %struct.con3270* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 4
  ret void
}

declare dso_local %struct.string* @con3270_alloc_string(%struct.con3270*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
