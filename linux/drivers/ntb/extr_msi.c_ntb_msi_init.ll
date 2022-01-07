; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { void (i8*)*, i64* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_msi_init(%struct.ntb_dev* %0, void (i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %14 = call i32 @ntb_peer_port_count(%struct.ntb_dev* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %136

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = add i64 16, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %26 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_3__* @devm_kzalloc(i32* %26, i64 %27, i32 %28)
  %30 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %30, i32 0, i32 0
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %33 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %136

39:                                               ; preds = %20
  %40 = load void (i8*)*, void (i8*)** %5, align 8
  %41 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %42 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store void (i8*)* %40, void (i8*)** %44, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %89, %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %51 = call i32 @ntb_peer_mw_count(%struct.ntb_dev* %50)
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ntb_peer_mw_get_addr(%struct.ntb_dev* %55, i32 %56, i32* %6, i32* %7)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %93

61:                                               ; preds = %49
  %62 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %63 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @devm_ioremap(i32* %63, i32 %64, i32 %65)
  %67 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %68 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %66, i64* %74, align 8
  %75 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %76 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %61
  %86 = load i32, i32* @EFAULT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %93

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %45

92:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %136

93:                                               ; preds = %85, %60
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %123, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %94
  %99 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %100 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %98
  %110 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %111 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %110, i32 0, i32 1
  %112 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %113 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @devm_iounmap(i32* %111, i64 %120)
  br label %122

122:                                              ; preds = %109, %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %94

126:                                              ; preds = %94
  %127 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %128 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %127, i32 0, i32 1
  %129 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %130 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @devm_kfree(i32* %128, %struct.TYPE_3__* %131)
  %133 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %134 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %133, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %134, align 8
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %92, %36, %17
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ntb_peer_port_count(%struct.ntb_dev*) #1

declare dso_local %struct.TYPE_3__* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @ntb_peer_mw_count(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_peer_mw_get_addr(%struct.ntb_dev*, i32, i32*, i32*) #1

declare dso_local i64 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @devm_iounmap(i32*, i64) #1

declare dso_local i32 @devm_kfree(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
