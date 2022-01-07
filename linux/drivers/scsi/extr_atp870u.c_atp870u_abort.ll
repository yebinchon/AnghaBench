; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { %struct.TYPE_4__**, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64, %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [31 x i8] c" atp870u: abort Channel = %x \0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"working=%x last_cmd=%x \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" quhdu=%x quendu=%x \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" r%2x=%2x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" r1c=%2x\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" r1f=%2x in_snd=%2x \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" d00=%2x\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" d02=%2x\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\0A que cdb= \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %2x \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" last_lenu= %x \00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @atp870u_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.atp_unit*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %8, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.atp_unit*
  store %struct.atp_unit* %16, %struct.atp_unit** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = call zeroext i8 @scmd_channel(%struct.scsi_cmnd* %17)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %23 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %30 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %35)
  %37 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %38 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %45 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %50)
  store i8 0, i8* %3, align 1
  br label %52

52:                                               ; preds = %65, %1
  %53 = load i8, i8* %3, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %54, 24
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i32
  %59 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %60 = load i8, i8* %5, align 1
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 @atp_readb_io(%struct.atp_unit* %59, i8 zeroext %60, i32 %62)
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i8, i8* %3, align 1
  %67 = add i8 %66, 1
  store i8 %67, i8* %3, align 1
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %70 = load i8, i8* %5, align 1
  %71 = call i32 @atp_readb_io(%struct.atp_unit* %69, i8 zeroext %70, i32 28)
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %74 = load i8, i8* %5, align 1
  %75 = call i32 @atp_readb_io(%struct.atp_unit* %73, i8 zeroext %74, i32 31)
  %76 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %77 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %82)
  %84 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %85 = load i8, i8* %5, align 1
  %86 = call i32 @atp_readb_pci(%struct.atp_unit* %84, i8 zeroext %85, i32 0)
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %89 = load i8, i8* %5, align 1
  %90 = call i32 @atp_readb_pci(%struct.atp_unit* %88, i8 zeroext %89, i32 2)
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  store i8 0, i8* %3, align 1
  br label %92

92:                                               ; preds = %160, %68
  %93 = load i8, i8* %3, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %96, label %163

96:                                               ; preds = %92
  %97 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %98 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %98, align 8
  %100 = load i8, i8* %5, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %99, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i8, i8* %3, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %107, align 8
  %109 = icmp ne %struct.scsi_cmnd* %108, null
  br i1 %109, label %110, label %159

110:                                              ; preds = %96
  %111 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %112 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i8, i8* %3, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %121, align 8
  store %struct.scsi_cmnd* %122, %struct.scsi_cmnd** %6, align 8
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8 0, i8* %4, align 1
  br label %124

124:                                              ; preds = %141, %110
  %125 = load i8, i8* %4, align 1
  %126 = zext i8 %125 to i32
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 0
  %129 = load i8, i8* %128, align 8
  %130 = zext i8 %129 to i32
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i8, i8* %4, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i8, i8* %4, align 1
  %143 = add i8 %142, 1
  store i8 %143, i8* %4, align 1
  br label %124

144:                                              ; preds = %124
  %145 = load %struct.atp_unit*, %struct.atp_unit** %7, align 8
  %146 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %146, align 8
  %148 = load i8, i8* %5, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %147, i64 %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i8, i8* %3, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %144, %96
  br label %160

160:                                              ; preds = %159
  %161 = load i8, i8* %3, align 1
  %162 = add i8 %161, 1
  store i8 %162, i8* %3, align 1
  br label %92

163:                                              ; preds = %92
  %164 = load i32, i32* @SUCCESS, align 4
  ret i32 %164
}

declare dso_local zeroext i8 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @atp_readb_io(%struct.atp_unit*, i8 zeroext, i32) #1

declare dso_local i32 @atp_readb_pci(%struct.atp_unit*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
