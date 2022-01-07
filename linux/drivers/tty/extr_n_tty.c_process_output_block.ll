; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_process_output_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_process_output_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.n_tty_data* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)* }
%struct.n_tty_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @process_output_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_output_block(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.n_tty_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %14, align 8
  store %struct.n_tty_data* %15, %struct.n_tty_data** %8, align 8
  %16 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %17 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %20 = call i32 @tty_write_room(%struct.tty_struct* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %25 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %137

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %28
  store i32 0, i32* %10, align 4
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %117, %34
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %12, align 1
  %43 = load i8, i8* %12, align 1
  %44 = zext i8 %43 to i32
  switch i32 %44, label %95 [
    i32 10, label %45
    i32 13, label %63
    i32 9, label %83
    i32 8, label %84
  ]

45:                                               ; preds = %40
  %46 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %47 = call i32 @O_ONLRET(%struct.tty_struct* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %51 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %54 = call i32 @O_ONLCR(%struct.tty_struct* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %123

57:                                               ; preds = %52
  %58 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %59 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %62 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %116

63:                                               ; preds = %40
  %64 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %65 = call i32 @O_ONOCR(%struct.tty_struct* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %69 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %123

73:                                               ; preds = %67, %63
  %74 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %75 = call i32 @O_OCRNL(%struct.tty_struct* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %123

78:                                               ; preds = %73
  %79 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %80 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %82 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %81, i32 0, i32 2
  store i32 0, i32* %82, align 4
  br label %116

83:                                               ; preds = %40
  br label %123

84:                                               ; preds = %40
  %85 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %86 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %91 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %84
  br label %116

95:                                               ; preds = %40
  %96 = load i8, i8* %12, align 1
  %97 = call i32 @iscntrl(i8 zeroext %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %95
  %100 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %101 = call i32 @O_OLCUC(%struct.tty_struct* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %123

104:                                              ; preds = %99
  %105 = load i8, i8* %12, align 1
  %106 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %107 = call i32 @is_continuation(i8 zeroext %105, %struct.tty_struct* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %111 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %94, %78, %57
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %11, align 8
  br label %36

122:                                              ; preds = %36
  br label %123

123:                                              ; preds = %122, %103, %83, %77, %72, %56
  %124 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %125 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %127, align 8
  %129 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 %128(%struct.tty_struct* %129, i8* %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %134 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %123, %23
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @O_ONLRET(%struct.tty_struct*) #1

declare dso_local i32 @O_ONLCR(%struct.tty_struct*) #1

declare dso_local i32 @O_ONOCR(%struct.tty_struct*) #1

declare dso_local i32 @O_OCRNL(%struct.tty_struct*) #1

declare dso_local i32 @iscntrl(i8 zeroext) #1

declare dso_local i32 @O_OLCUC(%struct.tty_struct*) #1

declare dso_local i32 @is_continuation(i8 zeroext, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
