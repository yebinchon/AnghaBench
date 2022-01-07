; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_setup_funclist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_setup_funclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32 }

@ips_isintr_morpheus = common dso_local global i32 0, align 4
@ips_isinit_morpheus = common dso_local global i32 0, align 4
@ips_issue_i2o_memio = common dso_local global i8* null, align 8
@ips_init_morpheus = common dso_local global i32 0, align 4
@ips_statupd_morpheus = common dso_local global i32 0, align 4
@ips_reset_morpheus = common dso_local global i32 0, align 4
@ips_intr_morpheus = common dso_local global i8* null, align 8
@ips_enable_int_morpheus = common dso_local global i32 0, align 4
@ips_isintr_copperhead_memio = common dso_local global i32 0, align 4
@ips_isinit_copperhead_memio = common dso_local global i32 0, align 4
@ips_init_copperhead_memio = common dso_local global i32 0, align 4
@ips_statupd_copperhead_memio = common dso_local global i32 0, align 4
@ips_statinit_memio = common dso_local global i32 0, align 4
@ips_reset_copperhead_memio = common dso_local global i32 0, align 4
@ips_intr_copperhead = common dso_local global i8* null, align 8
@ips_erase_bios_memio = common dso_local global i32 0, align 4
@ips_program_bios_memio = common dso_local global i32 0, align 4
@ips_verify_bios_memio = common dso_local global i32 0, align 4
@ips_enable_int_copperhead_memio = common dso_local global i32 0, align 4
@ips_issue_copperhead_memio = common dso_local global i8* null, align 8
@ips_isintr_copperhead = common dso_local global i32 0, align 4
@ips_isinit_copperhead = common dso_local global i32 0, align 4
@ips_init_copperhead = common dso_local global i32 0, align 4
@ips_statupd_copperhead = common dso_local global i32 0, align 4
@ips_statinit = common dso_local global i32 0, align 4
@ips_reset_copperhead = common dso_local global i32 0, align 4
@ips_erase_bios = common dso_local global i32 0, align 4
@ips_program_bios = common dso_local global i32 0, align 4
@ips_verify_bios = common dso_local global i32 0, align 4
@ips_enable_int_copperhead = common dso_local global i32 0, align 4
@ips_issue_i2o = common dso_local global i8* null, align 8
@ips_issue_copperhead = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ips_setup_funclist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_setup_funclist(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = call i64 @IPS_IS_MORPHEUS(%struct.TYPE_9__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i64 @IPS_IS_MARCO(%struct.TYPE_9__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @ips_isintr_morpheus, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 11
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @ips_isinit_morpheus, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 10
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** @ips_issue_i2o_memio, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @ips_init_morpheus, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 9
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @ips_statupd_morpheus, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 8
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @ips_reset_morpheus, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** @ips_intr_morpheus, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 5
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* @ips_enable_int_morpheus, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  br label %166

43:                                               ; preds = %6
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i64 @IPS_USE_MEMIO(%struct.TYPE_9__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load i32, i32* @ips_isintr_copperhead_memio, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 11
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @ips_isinit_copperhead_memio, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 10
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @ips_init_copperhead_memio, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 9
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ips_statupd_copperhead_memio, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 8
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @ips_statinit_memio, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 7
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @ips_reset_copperhead_memio, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 8
  %72 = load i8*, i8** @ips_intr_copperhead, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @ips_erase_bios_memio, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @ips_program_bios_memio, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @ips_verify_bios_memio, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @ips_enable_int_copperhead_memio, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = call i64 @IPS_USE_I2O_DELIVER(%struct.TYPE_9__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %47
  %96 = load i8*, i8** @ips_issue_i2o_memio, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  br label %105

100:                                              ; preds = %47
  %101 = load i8*, i8** @ips_issue_copperhead_memio, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %165

106:                                              ; preds = %43
  %107 = load i32, i32* @ips_isintr_copperhead, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 11
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @ips_isinit_copperhead, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 10
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @ips_init_copperhead, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 9
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @ips_statupd_copperhead, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 8
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @ips_statinit, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 7
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @ips_reset_copperhead, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 6
  store i32 %127, i32* %130, align 8
  %131 = load i8*, i8** @ips_intr_copperhead, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 5
  store i8* %131, i8** %134, align 8
  %135 = load i32, i32* @ips_erase_bios, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @ips_program_bios, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @ips_verify_bios, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @ips_enable_int_copperhead, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %152 = call i64 @IPS_USE_I2O_DELIVER(%struct.TYPE_9__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %106
  %155 = load i8*, i8** @ips_issue_i2o, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i8* %155, i8** %158, align 8
  br label %164

159:                                              ; preds = %106
  %160 = load i8*, i8** @ips_issue_copperhead, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  br label %164

164:                                              ; preds = %159, %154
  br label %165

165:                                              ; preds = %164, %105
  br label %166

166:                                              ; preds = %165, %10
  ret void
}

declare dso_local i64 @IPS_IS_MORPHEUS(%struct.TYPE_9__*) #1

declare dso_local i64 @IPS_IS_MARCO(%struct.TYPE_9__*) #1

declare dso_local i64 @IPS_USE_MEMIO(%struct.TYPE_9__*) #1

declare dso_local i64 @IPS_USE_I2O_DELIVER(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
