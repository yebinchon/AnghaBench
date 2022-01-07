; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_config_ddr2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_config_ddr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"error writing 0x0004\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error writing 0x0008\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error writing 0x000C\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"error writing 0x0010\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"error writing 0x0014\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error writing 0x0018\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"error writing 0x001C\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"error writing 0x0020\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"error writing 0x0024\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"error writing 0x0028\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"error writing 0x002C\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"error writing 0x0030\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"error writing 0x0034\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"error writing 0x0038\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"error writing 0x003C\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"error writing 0x0040\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"error writing 0x0044\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"error writing 0x0048\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"error writing 0x004C\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"error writing 0x005C\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"error writing 0x0100\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"error writing 0x0104\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"error writing 0x0118\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"error writing 0x0000\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"error reading 0x0000\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"DDR2 initialisation timed out, reg 0x0000=0x%08x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*)* @ufx_config_ddr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_config_ddr2(%struct.ufx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %8 = call i32 @ufx_reg_write(%struct.ufx_data* %7, i32 4, i32 2035575)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @check_warn_return(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %12 = call i32 @ufx_reg_write(%struct.ufx_data* %11, i32 8, i32 -1048576)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @check_warn_return(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %16 = call i32 @ufx_reg_write(%struct.ufx_data* %15, i32 12, i32 268378658)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @check_warn_return(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %20 = call i32 @ufx_reg_write(%struct.ufx_data* %19, i32 16, i32 198676)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @check_warn_return(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %23 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %24 = call i32 @ufx_reg_write(%struct.ufx_data* %23, i32 20, i32 5242905)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @check_warn_return(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %27 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %28 = call i32 @ufx_reg_write(%struct.ufx_data* %27, i32 24, i32 34410261)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @check_warn_return(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %31 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %32 = call i32 @ufx_reg_write(%struct.ufx_data* %31, i32 28, i32 39002885)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @check_warn_return(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %35 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %36 = call i32 @ufx_reg_write(%struct.ufx_data* %35, i32 32, i32 184748293)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @check_warn_return(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %39 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %40 = call i32 @ufx_reg_write(%struct.ufx_data* %39, i32 36, i32 2087)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @check_warn_return(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %43 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %44 = call i32 @ufx_reg_write(%struct.ufx_data* %43, i32 40, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @check_warn_return(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %47 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %48 = call i32 @ufx_reg_write(%struct.ufx_data* %47, i32 44, i32 66)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @check_warn_return(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %51 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %52 = call i32 @ufx_reg_write(%struct.ufx_data* %51, i32 48, i32 156368896)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @check_warn_return(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %55 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %56 = call i32 @ufx_reg_write(%struct.ufx_data* %55, i32 52, i32 35795732)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @check_warn_return(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %59 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %60 = call i32 @ufx_reg_write(%struct.ufx_data* %59, i32 56, i32 4390979)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @check_warn_return(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %63 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %64 = call i32 @ufx_reg_write(%struct.ufx_data* %63, i32 60, i32 -267452401)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @check_warn_return(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %67 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %68 = call i32 @ufx_reg_write(%struct.ufx_data* %67, i32 64, i32 -209653745)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @check_warn_return(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %71 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %72 = call i32 @ufx_reg_write(%struct.ufx_data* %71, i32 68, i32 -267451242)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @check_warn_return(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %75 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %76 = call i32 @ufx_reg_write(%struct.ufx_data* %75, i32 72, i32 50856966)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @check_warn_return(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %79 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %80 = call i32 @ufx_reg_write(%struct.ufx_data* %79, i32 76, i32 4096)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @check_warn_return(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %83 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %84 = call i32 @ufx_reg_write(%struct.ufx_data* %83, i32 92, i32 7)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @check_warn_return(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %87 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %88 = call i32 @ufx_reg_write(%struct.ufx_data* %87, i32 256, i32 1425014802)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @check_warn_return(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %91 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %92 = call i32 @ufx_reg_write(%struct.ufx_data* %91, i32 260, i32 16402)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @check_warn_return(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %95 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %96 = call i32 @ufx_reg_write(%struct.ufx_data* %95, i32 280, i32 1077952576)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @check_warn_return(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %99 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %100 = call i32 @ufx_reg_write(%struct.ufx_data* %99, i32 0, i32 1)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @check_warn_return(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  br label %103

103:                                              ; preds = %116, %1
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = icmp slt i32 %104, 500
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %109 = call i32 @ufx_reg_read(%struct.ufx_data* %108, i32 0, i32* %6)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @check_warn_return(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = call i64 @all_bits_set(i32 %112, i32 -1073741824)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %122

116:                                              ; preds = %107
  br label %103

117:                                              ; preds = %103
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @ETIMEDOUT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %115
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

declare dso_local i32 @ufx_reg_read(%struct.ufx_data*, i32, i32*) #1

declare dso_local i64 @all_bits_set(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
