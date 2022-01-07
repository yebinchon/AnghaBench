; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_console_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set up text mode\0A\00", align 1
@mysisusbs = common dso_local global %struct.sisusb_usb_data** null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate screen buffer\0A\00", align 1
@sisusb_con = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sisusb_console_init(%struct.sisusb_usb_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %11 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %10, i32 0, i32 9
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %14 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %19 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 9
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 1, i32* %4, align 4
  br label %157

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %29 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %32 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %36, %26
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %46 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %45, i32 0, i32 9
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 1, i32* %4, align 4
  br label %157

48:                                               ; preds = %40
  %49 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %50 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %53, %48
  %60 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %61 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %60, i32 0, i32 9
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %4, align 4
  br label %157

63:                                               ; preds = %56
  %64 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %65 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %64, i32 0, i32 3
  store i32 -1, i32* %65, align 4
  %66 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %67 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %66, i32 0, i32 4
  store i32 -1, i32* %67, align 8
  %68 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %69 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %68, i32 0, i32 5
  store i32 -1, i32* %69, align 4
  %70 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %71 = call i64 @sisusb_reset_text_mode(%struct.sisusb_usb_data* %70, i32 1)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %75 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %74, i32 0, i32 9
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %78 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %77, i32 0, i32 10
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %157

82:                                               ; preds = %63
  %83 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %84 = call i32 @sisusb_initialize(%struct.sisusb_usb_data* %83)
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %98, %82
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp sle i32 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %94 = load %struct.sisusb_usb_data**, %struct.sisusb_usb_data*** @mysisusbs, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %94, i64 %96
  store %struct.sisusb_usb_data* %93, %struct.sisusb_usb_data** %97, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %87

101:                                              ; preds = %87
  %102 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %103 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %102, i32 0, i32 6
  store i32 80, i32* %103, align 8
  %104 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %105 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %104, i32 0, i32 7
  store i32 32768, i32* %105, align 4
  %106 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %107 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @vmalloc(i32 %108)
  %110 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %111 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %110, i32 0, i32 8
  store i64 %109, i64* %111, align 8
  %112 = icmp ne i64 %109, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %101
  %114 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %115 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %114, i32 0, i32 9
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %118 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %117, i32 0, i32 10
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %157

122:                                              ; preds = %101
  %123 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %124 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %123, i32 0, i32 9
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = call i32 (...) @console_lock()
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call i32 @do_take_over_console(i32* @sisusb_con, i32 %128, i32 %130, i32 0)
  store i32 %131, i32* %9, align 4
  %132 = call i32 (...) @console_unlock()
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %122
  %136 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %137 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %155

138:                                              ; preds = %122
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %151, %138
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp sle i32 %142, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.sisusb_usb_data**, %struct.sisusb_usb_data*** @mysisusbs, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %147, i64 %149
  store %struct.sisusb_usb_data* null, %struct.sisusb_usb_data** %150, align 8
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %141

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154, %135
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %113, %73, %59, %44, %22
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sisusb_reset_text_mode(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sisusb_initialize(%struct.sisusb_usb_data*) #1

declare dso_local i64 @vmalloc(i32) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @do_take_over_console(i32*, i32, i32, i32) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
