; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_handle_diacr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_handle_diacr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.vc_data = type { i32 }

@diacr = common dso_local global i32 0, align 4
@BRL_UC_ROW = common dso_local global i32 0, align 4
@accent_table_size = common dso_local global i32 0, align 4
@accent_table = common dso_local global %struct.TYPE_4__* null, align 8
@kbd = common dso_local global %struct.TYPE_3__* null, align 8
@VC_UNICODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32)* @handle_diacr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_diacr(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @diacr, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* @diacr, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, -256
  %12 = load i32, i32* @BRL_UC_ROW, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, -256
  %17 = load i32, i32* @BRL_UC_ROW, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %14
  br label %59

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @accent_table_size, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @accent_table, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @accent_table, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @accent_table, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %94

54:                                               ; preds = %38, %29
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @BRL_UC_ROW, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62, %59
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %94

72:                                               ; preds = %66
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kbd, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VC_UNICODE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @to_utf8(%struct.vc_data* %79, i32 %80)
  br label %92

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @conv_uni_to_8bit(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @put_queue(%struct.vc_data* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %82
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %70, %47, %19
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @to_utf8(%struct.vc_data*, i32) #1

declare dso_local i32 @conv_uni_to_8bit(i32) #1

declare dso_local i32 @put_queue(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
