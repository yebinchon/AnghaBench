; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_do_output_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_do_output_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.n_tty_data* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)* }
%struct.n_tty_data = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@XTABS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.tty_struct*, i32)* @do_output_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_output_char(i8 zeroext %0, %struct.tty_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.n_tty_data*, align 8
  %9 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  store %struct.n_tty_data* %12, %struct.n_tty_data** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %155

16:                                               ; preds = %3
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %128 [
    i32 10, label %19
    i32 13, label %52
    i32 9, label %81
    i32 8, label %117
  ]

19:                                               ; preds = %16
  %20 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %21 = call i32 @O_ONLRET(%struct.tty_struct* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %25 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %28 = call i32 @O_ONLCR(%struct.tty_struct* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %155

34:                                               ; preds = %30
  %35 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %36 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %38 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %42, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %45 = call i32 %43(%struct.tty_struct* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 2, i32* %4, align 4
  br label %155

46:                                               ; preds = %26
  %47 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %48 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %51 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %151

52:                                               ; preds = %16
  %53 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %54 = call i32 @O_ONOCR(%struct.tty_struct* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %58 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %155

62:                                               ; preds = %56, %52
  %63 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %64 = call i32 @O_OCRNL(%struct.tty_struct* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  store i8 10, i8* %5, align 1
  %67 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %68 = call i32 @O_ONLRET(%struct.tty_struct* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %72 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %74 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %66
  br label %151

76:                                               ; preds = %62
  %77 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %78 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %80 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  br label %151

81:                                               ; preds = %16
  %82 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %83 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 7
  %86 = sub nsw i32 8, %85
  store i32 %86, i32* %9, align 4
  %87 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %88 = call i32 @O_TABDLY(%struct.tty_struct* %87)
  %89 = load i32, i32* @XTABS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -1, i32* %4, align 4
  br label %155

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %99 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %103 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %105, align 8
  %107 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 %106(%struct.tty_struct* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %155

111:                                              ; preds = %81
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %114 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %151

117:                                              ; preds = %16
  %118 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %119 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %124 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %117
  br label %151

128:                                              ; preds = %16
  %129 = load i8, i8* %5, align 1
  %130 = call i32 @iscntrl(i8 zeroext %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %128
  %133 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %134 = call i32 @O_OLCUC(%struct.tty_struct* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i8, i8* %5, align 1
  %138 = call zeroext i8 @toupper(i8 zeroext %137)
  store i8 %138, i8* %5, align 1
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i8, i8* %5, align 1
  %141 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %142 = call i32 @is_continuation(i8 zeroext %140, %struct.tty_struct* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %146 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %139
  br label %150

150:                                              ; preds = %149, %128
  br label %151

151:                                              ; preds = %150, %127, %111, %76, %75, %46
  %152 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %153 = load i8, i8* %5, align 1
  %154 = call i32 @tty_put_char(%struct.tty_struct* %152, i8 zeroext %153)
  store i32 1, i32* %4, align 4
  br label %155

155:                                              ; preds = %151, %96, %95, %61, %34, %33, %15
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @O_ONLRET(%struct.tty_struct*) #1

declare dso_local i32 @O_ONLCR(%struct.tty_struct*) #1

declare dso_local i32 @O_ONOCR(%struct.tty_struct*) #1

declare dso_local i32 @O_OCRNL(%struct.tty_struct*) #1

declare dso_local i32 @O_TABDLY(%struct.tty_struct*) #1

declare dso_local i32 @iscntrl(i8 zeroext) #1

declare dso_local i32 @O_OLCUC(%struct.tty_struct*) #1

declare dso_local zeroext i8 @toupper(i8 zeroext) #1

declare dso_local i32 @is_continuation(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @tty_put_char(%struct.tty_struct*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
