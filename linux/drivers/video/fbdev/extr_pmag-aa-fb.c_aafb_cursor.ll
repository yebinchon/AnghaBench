; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmag-aa-fb.c_aafb_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmag-aa-fb.c_aafb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.aafb_par* }
%struct.aafb_par = type { i32, i32 }
%struct.fb_cursor = type { i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32, i32 }

@BT431_CURSOR_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @aafb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aafb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.aafb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.aafb_par*, %struct.aafb_par** %10, align 8
  store %struct.aafb_par* %11, %struct.aafb_par** %6, align 8
  %12 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %13 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BT431_CURSOR_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %20 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BT431_CURSOR_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18, %2
  %26 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %27 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bt431_erase_cursor(i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %144

32:                                               ; preds = %18
  %33 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %34 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %39 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bt431_erase_cursor(i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %44 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FB_CUR_SETPOS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %51 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %54 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %58 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bt431_position_cursor(i32 %52, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %49, %42
  %63 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %64 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %62
  %70 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %71 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 15, i32 0
  store i32 %76, i32* %7, align 4
  %77 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %78 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 15, i32 0
  store i32 %83, i32* %8, align 4
  %84 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %85 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @bt455_write_cmap_entry(i32 %86, i32 8, i32 %87)
  %89 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %90 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @bt455_write_cmap_next(i32 %91, i32 %92)
  %94 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %95 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @bt455_write_ovly_next(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %69, %62
  %100 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %101 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %104 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %102, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %99
  %111 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %112 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %115 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %119 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %122 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %125 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %129 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bt431_set_cursor(i32 %113, i32 %117, i32 %120, i32 %123, i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %110, %99
  %134 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %135 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.aafb_par*, %struct.aafb_par** %6, align 8
  %140 = getelementptr inbounds %struct.aafb_par, %struct.aafb_par* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @bt431_enable_cursor(i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @bt431_erase_cursor(i32) #1

declare dso_local i32 @bt431_position_cursor(i32, i32, i32) #1

declare dso_local i32 @bt455_write_cmap_entry(i32, i32, i32) #1

declare dso_local i32 @bt455_write_cmap_next(i32, i32) #1

declare dso_local i32 @bt455_write_ovly_next(i32, i32) #1

declare dso_local i32 @bt431_set_cursor(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bt431_enable_cursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
