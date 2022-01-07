; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_translate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_translate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Using %s-based distribution\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bucket\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Table[%d] b1=%d b2=%d c1=%d c2=%d\0A\00", align 1
@R_TRANSLATETABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_config_translate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_config_translate_table(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %15 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %46, %1
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = sdiv i32 %34, 4
  %36 = mul nsw i32 %35, 8
  %37 = load i32, i32* %10, align 4
  %38 = srem i32 %37, 4
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %33, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %24

49:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  store i32 3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %113, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 64
  br i1 %52, label %53, label %116

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = and i32 %55, 3
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = and i32 %58, 3
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %11, align 4
  %67 = srem i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %11, align 4
  %75 = srem i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 23
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 %78, 17
  %80 = or i32 %77, %79
  %81 = load i32, i32* %13, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %80, %82
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 %84, 7
  %86 = or i32 %83, %85
  %87 = load i32, i32* %7, align 4
  %88 = shl i32 %87, 1
  %89 = or i32 %86, %88
  %90 = load i32, i32* %13, align 4
  %91 = shl i32 %90, 0
  %92 = or i32 %89, %91
  store i32 %92, i32* %4, align 4
  %93 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %94 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %104 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* @R_TRANSLATETABLE, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @xlr_nae_wreg(i32 %105, i64 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %53
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %50

116:                                              ; preds = %50
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xlr_nae_wreg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
